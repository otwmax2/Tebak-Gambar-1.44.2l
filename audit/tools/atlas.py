#!/usr/bin/env python3
"""Generate navigable static indexes from inventory and local Java declarations.
Regex-derived declarations are navigation aids, not a Java parser or call graph.
"""
import collections as C
import csv
import json
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[2]
DATA = ROOT / 'audit/data'

def read(name):
    with (DATA / name).open(newline='') as f:
        return list(csv.DictReader(f))

def main():
    sources = read('sources.csv')
    groups = C.defaultdict(list)
    for s in sources:
        groups[s['package']].append(s)
    lines = ['# Atlas seluruh package Java', '',
             'Dihasilkan oleh `python3 audit/tools/atlas.py`. Semua package dari seluruh file Java diinventarisasi; '
             'nama asal berasal dari komentar decompiler, bukan jaminan kepemilikan atau versi dependensi. '
             'Tabel ini adalah indeks, bukan klaim review manual setiap metode.', '',
             '| Package | File | Baris | Stub | Contoh nama asal (maks. 6) |', '|---|---:|---:|---:|---|']
    for pkg, ss in sorted(groups.items()):
        names = sorted({s['original_name'] for s in ss if s['original_name']})
        lines.append(f"| `{pkg}` | {len(ss)} | {sum(int(s['lines']) for s in ss)} | {sum(int(s['decompiler_stubs']) for s in ss)} | " + ', '.join('`'+n.replace('|','/')+'`' for n in names[:6]) + ' |')
    (ROOT / 'audit/ATLAS_PACKAGE.md').write_text('\n'.join(lines)+'\n')
    # These packages are supported by compiled-from names and app imports.
    auxiliary = {'g8','h8','i8','j8','k8','l8','m8','n8','o8','p8','r8','s8','w8','y8'}
    app = [s for s in sources if s['package'].startswith('com.tebakgambar') or s['package'] in auxiliary]
    lines = ['# Atlas kelas aplikasi dan package pendukung', '',
             f"{len(app)} file Java: namespace `com.tebakgambar` dan package pendukung teridentifikasi. "
             'Package obfuscated lain tidak otomatis dianggap vendor; lihat atlas seluruh package. '
             'Seluruh nama kelas aplikasi disertakan, termasuk generated binding dan resource. '
             'Deklarasi diekstrak heuristik berbasis baris; metode package-private, multiline, dan kelas anonim dapat tidak terwakili. '
             'Baca sumber/Smali untuk implementasi sebenarnya.', '',
             'Nilai string/kunci tidak disalin. Nomor baris menunjuk snapshot sumber awal.', '']
    decl_rx = re.compile(r'^\s*(?:public|private|protected)\s+.*')
    for s in sorted(app, key=lambda s:s['path']):
        text = (ROOT / s['path']).read_text()
        lines += [f"## `{s['path']}`", '',
                  f"Package `{s['package']}`; nama asal `{s['original_name'] or '(tidak dipulihkan)'}`; "
                  f"{s['lines']} baris; {s['decompiler_stubs']} stub; {s['incorrect_markers']} penanda dekompilasi salah.", '']
        declarations = []
        for n, line in enumerate(text.splitlines(), 1):
            # Methods only: do not reproduce field initializers or string literals.
            if decl_rx.match(line) and '(' in line and not re.search(r'=\s*(?:new|["\x27])', line) and not '"' in line:
                declarations.append((n, line.strip().removesuffix(' {')))
        imports = re.findall(r'^import ([\w.$*]+);', text, re.M)
        important = [i for i in imports if i.startswith(('com.tebakgambar','m8.','n8.','y8.','j8.','s8.','k8.','l8.','i8.'))]
        if important:
            lines += ['Referensi import internal: '+', '.join('`'+i+'`' for i in important)+'.', '']
        if declarations:
            lines += ['| Baris | Deklarasi (heuristik) |','|---:|---|']
            lines += [f'| {n} | `{d.replace("|", "/")}` |' for n, d in declarations]
            lines += ['']
        else:
            lines += ['Tidak ada deklarasi metode berakses eksplisit yang terambil (misalnya DTO/enum/resource).', '']
    (ROOT / 'audit/ATLAS_APLIKASI.md').write_text('\n'.join(lines)+'\n')
    resource_groups = C.defaultdict(lambda:C.Counter())
    files = read('files.csv')
    for f in files:
        if not f['path'].startswith('resources/'):
            continue
        pp = Path(f['path']).parts
        key = '/'.join(pp[:3]) if len(pp)>3 else '/'.join(pp[:2])
        resource_groups[key].update(files=1,bytes=int(f['bytes']))
    with (DATA/'resource-groups.csv').open('w',newline='') as f:
        w=csv.writer(f); w.writerow(['group','files','bytes'])
        for g,v in sorted(resource_groups.items()):w.writerow([g,v['files'],v['bytes']])
    # Identify binary signatures without decoding or executing the content.
    binary = [f for f in files if f['text_lines']=='']
    with (DATA/'binary-types.csv').open('w',newline='') as f:
        w=csv.writer(f);w.writerow(['path','mime_type'])
        for item in binary:
            data=(ROOT/item['path']).read_bytes()
            magic = [(b'\x89PNG\r\n\x1a\n','image/png'),(b'PK\x03\x04','application/zip'),
                     (b'OggS','audio/ogg'),(b'\x00\x01\x00\x00','font/sfnt'),
                     (b'OTTO','font/otf'),(b'\x1f\x8b','application/gzip'),
                     (b'\xca\xfe\xba\xbe','application/java-vm'),(b'pro\x00','application/android-profile')]
            kind=next((kind for sig,kind in magic if data.startswith(sig)), 'unidentified-by-simple-signature')
            w.writerow([item['path'],kind])
    defaults=json.loads((ROOT/'resources/assets/default_level.json').read_text())['data']
    with (DATA/'levels.csv').open('w',newline='') as f:
        w=csv.writer(f);w.writerow(['id','title','version','bundled_archives','download_scheme'])
        for lv in defaults:
            path=ROOT/'resources/assets/level'/('android-level-'+str(lv['SoalRegulerID']))
            w.writerow([lv['SoalRegulerID'],lv['Title'],lv['Version'],len(list(path.glob('*.zip'))),lv['ZipLevelURL'].split(':')[0]])
    print(f'Indexed {len(groups)} packages, {len(app)} application/support files, {len(binary)} non-text-classified files.')

if __name__=='__main__': main()
