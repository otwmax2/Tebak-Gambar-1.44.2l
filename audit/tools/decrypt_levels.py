#!/usr/bin/env python3
"""Reproduce the repository's offline bundled-level reader, with safe output names.

Optional dependencies: requirements-decrypt.txt. Does not brute-force passwords,
contact game servers, execute app code, or modify the original assets. Extracted
copyrighted media/results belong outside Git. Output directory must be empty/new.
"""
import argparse
import collections
import csv
import hashlib
import html
import io
import json
from pathlib import Path
import re
import struct
import subprocess
import zlib
import xml.etree.ElementTree as ET

import pyzipper
from Cryptodome.Cipher import AES
from PIL import Image

ROOT = Path(__file__).resolve().parents[2]
MAX_ENTRY = 10 * 1024 * 1024
MAX_TOTAL = 100 * 1024 * 1024
JAVA_TRIM = ''.join(chr(i) for i in range(33))
KEY_PATTERNS = {
    'resource_secretkey': re.compile(r'secretkey', re.I),
    'resource_ivkey': re.compile(r'ivkey', re.I),
    'mcrypt': re.compile(r'MCrypt|AES/CBC/NoPadding'),
    'password': re.compile(r'password|setPassword', re.I),
    'zip_reader': re.compile(r'ZipFile|ZipInputStream|AESZipFile'),
    'md5': re.compile(r'\bMD5\b', re.I),
}


def dump_json(path, obj):
    path.write_text(json.dumps(obj, indent=2, ensure_ascii=False) + '\n', encoding='utf-8')


def dump_csv(path, fields, rows):
    with path.open('w', encoding='utf-8', newline='') as f:
        w = csv.DictWriter(f, fieldnames=fields)
        w.writeheader()
        w.writerows(rows)


def scan_repository(out):
    """Read every tracked file in HEAD; record matches as locations, not key values."""
    ref = subprocess.check_output(['git', 'rev-parse', 'HEAD'], cwd=ROOT, text=True).strip()
    paths = subprocess.check_output(['git', 'ls-tree', '-r', '--name-only', '-z', ref], cwd=ROOT).decode().strip('\0').split('\0')
    inventory, references = [], []
    for rel in paths:
        data = (ROOT / rel).read_bytes()
        try:
            text = data.decode('utf-8') if b'\0' not in data else None
        except UnicodeDecodeError:
            text = None
        hits = 0
        if text is not None:
            for n, line in enumerate(text.splitlines(), 1):
                categories = [name for name, rx in KEY_PATTERNS.items() if rx.search(line)]
                for category in categories:
                    references.append(dict(path=rel, line=n, category=category))
                    hits += 1
        inventory.append(dict(path=rel, bytes=len(data), sha256=hashlib.sha256(data).hexdigest(), text_scanned=int(text is not None), pattern_hits=hits))
    dump_csv(out / 'repository-scan.csv', ['path', 'bytes', 'sha256', 'text_scanned', 'pattern_hits'], inventory)
    dump_csv(out / 'key-references.csv', ['path', 'line', 'category'], references)
    return dict(reference_commit=ref, tracked_files_read=len(inventory), text_files_scanned=sum(r['text_scanned'] for r in inventory), key_reference_hits=len(references), matched_files=len({r['path'] for r in references}))


def load_key_material():
    strings = {e.get('name'): e.text for e in ET.parse(ROOT / 'resources/res/values/strings.xml').getroot() if e.tag == 'string'}
    key = strings['secretkey'].encode('ascii')
    iv = strings['ivkey'].encode('ascii')
    java = (ROOT / 'sources/y8/k.java').read_text()
    # Check named field initializers, without duplicating key literals in this tool.
    source_iv = re.search(r'private String f37052a = "([^"]+)";', java)[1].encode('ascii')
    source_key = re.search(r'private String f37055d = "([^"]+)";', java)[1].encode('ascii')
    if key != source_key or iv != source_iv:
        raise ValueError('Resource and MCrypt key/IV do not agree')
    if len(key) != 32 or len(iv) != 16:
        raise ValueError('Unexpected AES key/IV byte length')
    return key, iv


def validate_png(data):
    if not data.startswith(b'\x89PNG\r\n\x1a\n'):
        raise ValueError('Payload is not PNG')
    off = 8
    chunks = []
    ended = False
    while off < len(data):
        if len(data) - off < 12:
            raise ValueError('Truncated PNG chunk header')
        length = struct.unpack('>I', data[off:off+4])[0]
        end = off + 12 + length
        if end > len(data):
            raise ValueError('PNG chunk exceeds payload')
        body = data[off+4:off+8+length]
        crc = struct.unpack('>I', data[off+8+length:end])[0]
        if zlib.crc32(body) & 0xffffffff != crc:
            raise ValueError('PNG chunk CRC mismatch')
        chunks.append(dict(type=body[:4].decode('ascii'), bytes=length))
        off = end
        if body[:4] == b'IEND':
            ended = True
            break
    if not ended or off != len(data):
        raise ValueError('Missing IEND or trailing bytes after PNG')
    with Image.open(io.BytesIO(data)) as image:
        image.verify()
    with Image.open(io.BytesIO(data)) as image:
        image.load()  # Actually decode all pixels, not only inspect the header.
        dimensions = dict(width=image.width, height=image.height, mode=image.mode, image_format=image.format)
    return dict(**dimensions, chunks=chunks, trailing_bytes=0)


def decrypt_archive(path, global_index, key, iv, out, sequence):
    level = int(path.parent.name.removeprefix('android-level-'))
    password = hashlib.md5(str(global_index).encode('ascii') + key).hexdigest().encode('ascii')
    with pyzipper.AESZipFile(path) as z:
        entries = z.infolist()
        if len(entries) != 1:
            raise ValueError('Expected exactly one entry')
        entry = entries[0]
        if entry.is_dir() or not 0 < entry.file_size <= MAX_ENTRY:
            raise ValueError('Unsafe/unexpected entry size or directory')
        if entry.compress_type not in {0, 8} or entry.wz_aes_strength != 3:
            raise ValueError('Expected stored/deflate with WinZip AES-256')
        # Never use an archive entry name as an output filesystem path.
        encrypted_name = bytes.fromhex(entry.filename)
        if not encrypted_name or len(encrypted_name) % 16:
            raise ValueError('Invalid AES-CBC metadata ciphertext length')
        plain_name = AES.new(key, AES.MODE_CBC, iv).decrypt(encrypted_name)
        metadata = plain_name.decode('utf-8').strip(JAVA_TRIM)
        fields = metadata.split('#')
        if len(fields) != 4:
            raise ValueError('Expected id#type#level#answer metadata')
        question_id, question_type, metadata_level, answer = fields
        answer = answer.replace('.png', '')  # Match original Android implementation.
        if int(question_id) != global_index or int(metadata_level) != level or level != global_index // 20 + 1:
            raise ValueError('Filename/metadata/folder/index disagree')
        # Reading to EOF validates WinZip AES authentication (and decompression).
        data = z.read(entry, pwd=password)
        if len(data) != entry.file_size:
            raise ValueError('Decrypted length differs from declared size')
        image_info = validate_png(data)
        output = Path('images') / f'level-{level:02d}' / f'question-{global_index:03d}.png'
        target = out / output
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(data)
        detail = dict(sequence=sequence, archive=path.relative_to(ROOT).as_posix(), archive_sha256=hashlib.sha256(path.read_bytes()).hexdigest(), global_index=global_index, level=level, question_type=question_type, answer=answer, metadata=metadata, encrypted_entry_name=entry.filename, metadata_padding_bytes=len(plain_name)-len(metadata.encode('utf-8')), zip_encryption='WinZip AES-256', zip_compression='stored' if entry.compress_type == 0 else 'deflate', zip_aes_version=entry.wz_aes_version, zip_authentication='passed', uncompressed_bytes=len(data), image_sha256=hashlib.sha256(data).hexdigest(), output_image=output.as_posix(), **image_info)
        detail_path = out / 'details' / f'question-{global_index:03d}.json'
        detail_path.parent.mkdir(exist_ok=True)
        dump_json(detail_path, detail)
        return detail


def write_gallery(out, results, summary):
    cards = []
    for r in results:
        answer = html.escape(r['answer'])
        search = html.escape(f"{r['global_index']} {r['level']} {r['question_type']} {r['answer']}".casefold(), quote=True)
        cards.append(f'''<article data-level="{r['level']}" data-search="{search}"><header>#{r['global_index']:03d} · Level {r['level']} · {html.escape(r['question_type'])}</header><img loading="lazy" src="{r['output_image']}" alt="Soal {r['global_index']}"><details><summary>Lihat jawaban</summary><p>{answer}</p></details><footer>{r['width']} × {r['height']} · AES ✓ · PNG ✓ · <a href="details/question-{r['global_index']:03d}.json">Bukti</a></footer></article>''')
    page = '''<!doctype html><html lang="id"><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>Hasil dekripsi 400 ZIP Tebak Gambar</title>
<style>body{font:16px system-ui;margin:0;background:#f4f6f9;color:#182235}main{max-width:1320px;margin:auto;padding:28px}h1{margin-bottom:8px}nav{display:flex;gap:12px;flex-wrap:wrap;align-items:center;margin:24px 0;position:sticky;top:0;background:#f4f6f9ee;padding:12px 0}input,select,button{font:inherit;padding:10px;border:1px solid #c6cedb;border-radius:8px}input{min-width:260px}#grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(250px,1fr));gap:18px}article{background:white;border:1px solid #dfe4ec;border-radius:12px;overflow:hidden}header,footer,details{padding:12px 16px}header{font-weight:650}footer{font-size:12px;color:#5a677a;border-top:1px solid #edf0f5}img{display:block;width:100%;aspect-ratio:1;object-fit:contain}details p{font-weight:700}summary{cursor:pointer}a{color:#215ac6}[hidden]{display:none!important}.meta{color:#526176;line-height:1.7}</style>
<main><h1>400 ZIP berhasil dibuka</h1><div class="meta">Tebak Gambar 1.44.2l · 20 level · semua password diturunkan dari kode lokal, tanpa brute force/server.<br>Autentikasi AES ZIP, metadata, CRC chunk PNG, dan decoding pixel diperiksa satu per satu. Arsip asli tidak diubah.</div><p><a href="results.csv">CSV semua soal/jawaban</a> · <a href="archive-passwords.csv">Password setiap ZIP</a> · <a href="key-material.json">Kunci konten lokal</a> · <a href="summary.json">Ringkasan</a> · <a href="processing.log">Log 400 arsip</a> · <a href="repository-scan.csv">Inventaris pencarian repo</a> · <a href="key-references.csv">Lokasi referensi kunci</a></p>
<nav><input id="q" placeholder="Cari nomor, tipe, atau jawaban" aria-label="Cari"><select id="level" aria-label="Level"><option value="">Semua level</option>OPTIONS</select><button id="answers">Buka semua jawaban</button><span id="count"></span></nav><section id="grid">CARDS</section></main>
<script>const cards=[...document.querySelectorAll('article')],q=document.querySelector('#q'),level=document.querySelector('#level'),count=document.querySelector('#count');function filter(){let n=0;for(const c of cards){c.hidden=!!((level.value&&c.dataset.level!==level.value)||!c.dataset.search.includes(q.value.toLocaleLowerCase().trim()));if(!c.hidden)n++}count.textContent=n+' / '+cards.length+' soal'}q.addEventListener('input',filter);level.addEventListener('change',filter);document.querySelector('#answers').onclick=e=>{const open=e.target.textContent.startsWith('Buka');for(const c of cards)if(!c.hidden)c.querySelector('details').open=open;e.target.textContent=open?'Tutup semua jawaban':'Buka semua jawaban'};filter();</script></html>'''
    page = page.replace('OPTIONS', ''.join(f'<option value="{i}">Level {i}</option>' for i in range(1, 21))).replace('CARDS', '\n'.join(cards))
    page = page.replace('400 ZIP berhasil dibuka', f"{summary['opened']} / {summary['archive_count']} ZIP berhasil dibuka")
    (out / 'index.html').write_text(page, encoding='utf-8')


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--out', type=Path, required=True, help='New/empty directory OUTSIDE the repository')
    args = p.parse_args()
    out = args.out.resolve()
    if out == ROOT or ROOT in out.parents:
        p.error('Keep extracted media outside the Git repository')
    if out.exists() and any(out.iterdir()):
        p.error('Output directory must be empty/new')
    out.mkdir(parents=True, exist_ok=True)
    scan = scan_repository(out)
    key, iv = load_key_material()
    dump_json(out/'key-material.json', dict(purpose='Offline bundled level content only; not account/OAuth credentials', metadata_aes_key_ascii=key.decode('ascii'), metadata_iv_ascii=iv.decode('ascii'), password_formula='MD5(ASCII(global_index) + ASCII(secretkey)), lowercase hex ASCII'))
    base = ROOT / 'resources/assets/level'
    paths = sorted(base.rglob('*.zip'), key=lambda path: (int(path.parent.name.removeprefix('android-level-')), path.name))
    if len(paths) != 400:
        raise ValueError('Expected exactly 400 bundled archives')
    by_hash = {hashlib.md5(key + str(i).encode('ascii')).hexdigest(): i for i in range(400)}
    results, failures = [], []
    total = 0
    with (out / 'processing.log').open('w', encoding='utf-8') as log:
        for sequence, path in enumerate(paths, 1):
            try:
                if total >= MAX_TOTAL:
                    raise ValueError('Total extraction size limit reached')
                if path.stem not in by_hash:
                    raise ValueError('Archive filename does not match any bundled question index')
                result = decrypt_archive(path, by_hash[path.stem], key, iv, out, sequence)
                total += result['uncompressed_bytes']
                results.append(result)
                status = f"{sequence:03d}/400 OK level={result['level']:02d} id={result['global_index']:03d} ZIP-AES=PASS metadata=PASS PNG-CRC=PASS pixels=PASS {path.name}"
            except Exception as exc:
                failures.append(dict(sequence=sequence, archive=path.relative_to(ROOT).as_posix(), error=f'{type(exc).__name__}: {exc}'))
                status = f'{sequence:03d}/400 FAIL {path.name} {type(exc).__name__}: {exc}'
            print(status)
            log.write(status + '\n')
            log.flush()
    results.sort(key=lambda r: r['global_index'])
    fields = ['sequence','archive','archive_sha256','global_index','level','question_type','answer','metadata','zip_encryption','zip_compression','zip_aes_version','zip_authentication','uncompressed_bytes','image_sha256','width','height','mode','image_format','trailing_bytes','output_image']
    dump_csv(out/'results.csv', fields, [{k:r[k] for k in fields} for r in results])
    dump_json(out/'failures.json', failures)
    dump_csv(out/'archive-passwords.csv', ['archive','global_index','password'], [dict(archive=r['archive'], global_index=r['global_index'], password=hashlib.md5(str(r['global_index']).encode('ascii')+key).hexdigest()) for r in results])
    summary = dict(**scan, archive_count=len(paths), opened=len(results), failed=len(failures), total_image_bytes=total, distinct_indices=len({r['global_index'] for r in results}), index_range=[min(r['global_index'] for r in results),max(r['global_index'] for r in results)] if results else [], levels=dict(sorted(collections.Counter(r['level'] for r in results).items())), question_types=dict(collections.Counter(r['question_type'] for r in results)), zip_aes_versions=dict(collections.Counter(r['zip_aes_version'] for r in results)), zip_compression=dict(collections.Counter(r['zip_compression'] for r in results)), image_formats=dict(collections.Counter(r['image_format'] for r in results)), image_sizes=dict(collections.Counter(f"{r['width']}x{r['height']}" for r in results)), png_chunk_types=dict(collections.Counter(c['type'] for r in results for c in r['chunks'])), all_zip_authentication_passed=len(results)==400 and all(r['zip_authentication']=='passed' for r in results), all_png_verified_and_decoded=len(results)==400, nested_archives_detected=0, trailing_bytes_detected=sum(r['trailing_bytes'] for r in results), password_derivation='MD5(ASCII(global_index) + ASCII(secretkey)); hex lowercase used as ASCII password', filename_derivation='MD5(ASCII(secretkey) + ASCII(global_index)) + .zip', metadata_cipher='AES-256-CBC/NoPadding; hex entry filename; Java trim removes leading/trailing U+0000..U+0020', key_source='resources/res/values/strings.xml: secretkey; matches sources/y8/k.java f37055d', iv_source='resources/res/values/strings.xml: ivkey; matches sources/y8/k.java f37052a', zip_payload_note='WinZip AES authentication checked by pyzipper.read; AES-2 ZIP CRC field is not an independent payload CRC check.', limitations=['No server/app execution or password brute force','No claim of steganographic analysis of decoded pixels','All actual decoded payloads are PNG, not nested ZIP','Key-reference matching is automated, not manual reading of every repository line'])
    dump_json(out/'summary.json', summary)
    write_gallery(out, results, summary)
    if failures or len(results) != 400 or sorted(r['global_index'] for r in results) != list(range(400)):
        raise SystemExit('Incomplete extraction: inspect failures.json')
    print(json.dumps(summary, indent=2, ensure_ascii=False))


if __name__ == '__main__':
    main()
