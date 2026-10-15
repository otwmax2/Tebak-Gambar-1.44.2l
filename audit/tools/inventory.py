#!/usr/bin/env python3
"""Read-only static inventory of the original Git tree. Python stdlib only.
Does not execute application code, extract archives, decrypt content or contact hosts.
Outputs refer to bytes in the working tree for paths listed in the reference commit.
"""
import argparse
import collections as C
import csv
import hashlib
import io
import json
from pathlib import Path, PurePosixPath
import re
import struct
import subprocess
import xml.etree.ElementTree as ET
import zipfile

ROOT = Path(__file__).resolve().parents[2]
A = '{http://schemas.android.com/apk/res/android}'

def csv_write(out, name, fields, rows):
    with (out / name).open('w', newline='', encoding='utf-8') as f:
        w = csv.DictWriter(f, fieldnames=fields)
        w.writeheader()
        w.writerows(rows)

def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--ref', default='50a31d40e67903255208218c93c7d92c64781653')
    p.add_argument('--out', type=Path, default=ROOT / 'audit/data')
    args = p.parse_args()
    out = args.out.resolve()
    out.mkdir(parents=True, exist_ok=True)
    ref = subprocess.check_output(['git', 'rev-parse', args.ref], cwd=ROOT, text=True).strip()
    paths = subprocess.check_output(['git', 'ls-tree', '-r', '--name-only', '-z', ref], cwd=ROOT).decode().strip('\0').split('\0')
    inv, src, xmls, zips, imgs, deps, patterns, sqls = [], [], [], [], [], [], [], []
    packages, stats, exts, domains = {}, C.Counter(), C.Counter(), {}
    java_paths, smali_paths = set(), set()
    rx_url = re.compile(r'https?://[^\s<>"\x27\\)]+')
    checks = {
        'decompiler_stub': re.compile(r'throw new (?:java\.lang\.)?UnsupportedOperationException\("Method not decompiled:'),
        'decompiler_incorrect': re.compile(r'Code decompiled incorrectly'),
        'body_logging': re.compile(r'EnumC0257a\.BODY|Level\.BODY'),
        'web_javascript_enabled': re.compile(r'setJavaScriptEnabled\(true\)'),
        'web_javascript_bridge': re.compile(r'addJavascriptInterface\('),
        'web_file_access': re.compile(r'setAllow(?:UniversalAccessFromFileURLs|FileAccessFromFileURLs|FileAccess)\(true\)'),
        'ssl_proceed': re.compile(r'\.proceed\(\)'),
        'runtime_exec': re.compile(r'Runtime\.getRuntime\(\)\.exec\('),
        'dynamic_dex': re.compile(r'(?:DexClassLoader|InMemoryDexClassLoader)\('),
        'aes_cbc_nopadding': re.compile(r'AES/CBC/NoPadding'),
        'md5': re.compile(r'getInstance\("MD5"\)'),
        'world_readable': re.compile(r'MODE_WORLD_READABLE|MODE_WORLD_WRITEABLE'),
    }
    for rel in paths:
        data = (ROOT / rel).read_bytes()
        ext = Path(rel).suffix.lower() or '(none)'
        top = rel.split('/')[0]
        stats[top + '_files'] += 1
        stats[top + '_bytes'] += len(data)
        exts[ext] += 1
        is_text = b'\0' not in data and ext in {'.java', '.smali', '.xml', '.json', '.properties', '.version', '.txt', '.proto', '.sf', '.mf'}
        text = data.decode('utf-8', errors='replace') if is_text else ''
        lines = len(text.splitlines()) if is_text else ''
        inv.append(dict(path=rel, bytes=len(data), sha256=hashlib.sha256(data).hexdigest(), extension=ext, text_lines=lines))
        if is_text:
            stats['text_files'] += 1
            stats['text_lines'] += lines
            for m in rx_url.finditer(text):
                u = m.group().rstrip('.,;')
                # Raw public URLs only; avoid copying values of query credentials.
                host_match = re.match(r'https?://([^/:?#]+)', u)
                if host_match:
                    host = host_match[1].lower()
                    item = domains.setdefault(host, {'hits': 0, 'paths': set(), 'example_path': rel, 'example_line': text.count('\n', 0, m.start()) + 1})
                    item['hits'] += 1
                    item['paths'].add(rel)
            if ext == '.java':
                if rel.startswith('sources/'):
                    java_paths.add(rel[8:-5])
                pkg_m = re.search(r'^package ([\w.]+);', text, re.M)
                pkg = pkg_m[1] if pkg_m else '(default)'
                orig_m = re.search(r'compiled from: (.*?) \*/', text)
                orig = orig_m[1] if orig_m else ''
                imports = re.findall(r'^import ([\w.$*]+);', text, re.M)
                methods = re.findall(r'^\s*(?:public|private|protected)\s+(?:(?:static|final|abstract|synchronized|native|synthetic)\s+)*(?:[\w<>\[\].?,]+\s+)+(\w+)\([^;\n]*\)', text, re.M)
                stubs = len(checks['decompiler_stub'].findall(text))
                src.append(dict(path=rel, package=pkg, original_name=orig, lines=lines, imports=len(imports), method_declarations=len(methods), decompiler_stubs=stubs, incorrect_markers=text.count('Code decompiled incorrectly'), app_namespace=int(pkg.startswith('com.tebakgambar'))))
                ps = packages.setdefault(pkg, C.Counter())
                ps.update(files=1, lines=lines, bytes=len(data), decompiler_stubs=stubs)
                for category, rx in checks.items():
                    for m in rx.finditer(text):
                        patterns.append(dict(path=rel, line=text.count('\n', 0, m.start()) + 1, category=category))
                for n, line in enumerate(text.splitlines(), 1):
                    if re.search(r'CREATE TABLE|CREATE (?:UNIQUE )?INDEX|ALTER TABLE|DROP TABLE', line):
                        sqls.append(dict(path=rel, line=n, statement=line.strip()))
            if ext == '.smali':
                smali_paths.add(rel[6:-6])
        if ext == '.xml':
            try:
                el = ET.fromstring(data)
                xmls.append(dict(path=rel, status='parsed', root=el.tag, elements=sum(1 for _ in el.iter()), error=''))
            except ET.ParseError as e:
                xmls.append(dict(path=rel, status='parse_error', root='', elements='', error=str(e)))
        if ext == '.zip':
            try:
                with zipfile.ZipFile(io.BytesIO(data)) as z:
                    infos = z.infolist()
                    encrypted = any(i.flag_bits & 1 for i in infos)
                    unsafe = [i.filename for i in infos if PurePosixPath(i.filename).is_absolute() or '..' in PurePosixPath(i.filename.replace('\\', '/')).parts or re.match(r'^[A-Za-z]:', i.filename)]
                    bad = 'not_tested_encrypted' if encrypted else (z.testzip() or 'ok')
                    zips.append(dict(path=rel, entries=len(infos), uncompressed_bytes=sum(i.file_size for i in infos), encrypted=int(encrypted), unsafe_paths=';'.join(unsafe), crc=bad, names=';'.join(i.filename for i in infos)))
            except Exception as e:
                zips.append(dict(path=rel, entries='', uncompressed_bytes='', encrypted='', unsafe_paths='', crc=type(e).__name__ + ': ' + str(e), names=''))
        if ext == '.png':
            valid = data.startswith(b'\x89PNG\r\n\x1a\n') and data[12:16] == b'IHDR' and len(data) >= 24
            w, h = struct.unpack('>II', data[16:24]) if valid else ('', '')
            imgs.append(dict(path=rel, format='PNG', width=w, height=h, header='ok' if valid else 'unexpected'))
        if rel.startswith('resources/') and (ext == '.properties' or rel.startswith('resources/META-INF/') and ext == '.version'):
            metadata = data.decode('utf-8', errors='replace').strip()
            metadata = re.sub(r'(?im)^([^\n=]*(?:secret|token|password|consumer_key)[^\n=]*=).+$', r'\1 [REDACTED]', metadata)
            deps.append(dict(path=rel, metadata=metadata.replace('\n', ' | ')))
    manifest = ET.parse(ROOT / 'resources/AndroidManifest.xml').getroot()
    app = manifest.find('application')
    components = []
    for el in app:
        if el.tag not in {'activity', 'activity-alias', 'service', 'receiver', 'provider'}:
            continue
        attrs = {k.replace(A, ''): v for k, v in el.attrib.items()}
        filters = el.findall('intent-filter')
        exported = attrs.get('exported', 'implicit:true' if filters else 'implicit:false')
        components.append(dict(type=el.tag, name=attrs.get('name'), exported=exported, permission=attrs.get('permission', ''), readPermission=attrs.get('readPermission', ''), authorities=attrs.get('authorities', ''), actions=';'.join(x.get(A+'name', '') for f in filters for x in f.findall('action')), data=json.dumps([{k.replace(A, ''): v for k, v in d.attrib.items()} for f in filters for d in f.findall('data')], ensure_ascii=False), source_exists=int((ROOT / ('sources/' + attrs.get('name', '').replace('.', '/') + '.java')).exists())))
    permissions = [{k.replace(A, ''): v for k, v in el.attrib.items()} for el in manifest.findall('uses-permission')]
    def write(name, fields, rows):
        csv_write(out, name, fields.split(','), rows)
    write('files.csv', 'path,bytes,sha256,extension,text_lines', inv)
    write('sources.csv', 'path,package,original_name,lines,imports,method_declarations,decompiler_stubs,incorrect_markers,app_namespace', src)
    write('packages.csv', 'package,files,lines,bytes,decompiler_stubs', [dict(package=p, **v) for p, v in sorted(packages.items())])
    write('xml.csv', 'path,status,root,elements,error', xmls)
    write('archives.csv', 'path,entries,uncompressed_bytes,encrypted,unsafe_paths,crc,names', zips)
    write('images.csv', 'path,format,width,height,header', imgs)
    write('dependencies.csv', 'path,metadata', deps)
    write('patterns.csv', 'path,line,category', patterns)
    write('domains.csv', 'host,hits,files,example_path,example_line', [dict(host=h, hits=v['hits'], files=len(v['paths']), example_path=v['example_path'], example_line=v['example_line']) for h, v in sorted(domains.items())])
    write('sql.csv', 'path,line,statement', sqls)
    write('components.csv', 'type,name,exported,permission,readPermission,authorities,actions,data,source_exists', components)
    write('source-smali-diff.csv', 'side,path', [dict(side='java_only', path=p) for p in sorted(java_paths - smali_paths)] + [dict(side='smali_only', path=p) for p in sorted(smali_paths - java_paths)])
    summary = dict(reference_commit=ref, file_count=len(paths), total_bytes=sum(r['bytes'] for r in inv), counts=dict(stats), extensions=dict(sorted(exts.items())), java_packages=len(packages), components=dict(C.Counter(c['type'] for c in components)), exported_components=sum(c['exported'] in {'true', 'implicit:true'} for c in components), permissions=permissions, manifest={k.replace(A, ''): v for k, v in manifest.attrib.items()}, sdk={k.replace(A, ''): v for k, v in manifest.find('uses-sdk').attrib.items()}, application={k.replace(A, ''): v for k, v in app.attrib.items()}, decompiler_stub_occurrences=sum(r['decompiler_stubs'] for r in src), java_files_with_stubs=sum(bool(r['decompiler_stubs']) for r in src), app_java_files=sum(r['app_namespace'] for r in src), app_decompiler_stubs=sum(r['decompiler_stubs'] for r in src if r['app_namespace']), pattern_counts=dict(C.Counter(r['category'] for r in patterns)), java_without_exact_smali=len(java_paths-smali_paths), smali_without_exact_java=len(smali_paths-java_paths), xml_errors=sum(r['status'] != 'parsed' for r in xmls), archive_crc_status=dict(C.Counter(r['crc'] for r in zips)), archive_encrypted=sum(r['encrypted']==1 for r in zips), archive_unsafe_paths=sum(bool(r['unsafe_paths']) for r in zips), png_header_errors=sum(r['header'] != 'ok' for r in imgs), domains=len(domains), largest_files=sorted(inv, key=lambda r: r['bytes'], reverse=True)[:20])
    (out / 'summary.json').write_text(json.dumps(summary, indent=2, ensure_ascii=False) + '\n')
    print(json.dumps({k: v for k, v in summary.items() if k not in {'largest_files','permissions','manifest','application'}}, indent=2))

if __name__ == '__main__':
    main()
