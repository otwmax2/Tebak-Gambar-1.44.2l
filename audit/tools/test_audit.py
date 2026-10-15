#!/usr/bin/env python3
"""Validate audit consistency and selected binary container structures, not Android runtime behavior."""
import csv
import gzip
import hashlib
import json
from pathlib import Path
import struct
import subprocess
import unittest
import zlib

ROOT = Path(__file__).resolve().parents[2]
DATA = ROOT / 'audit/data'

def rows(name):
    with (DATA / name).open(newline='') as f:
        return list(csv.DictReader(f))

class AuditTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.summary = json.loads((DATA / 'summary.json').read_text())
        cls.files = rows('files.csv')

    def test_full_git_tree_coverage(self):
        expected = subprocess.check_output(['git','ls-tree','-r','--name-only','-z',self.summary['reference_commit']],cwd=ROOT).decode().strip('\0').split('\0')
        self.assertEqual(set(expected),{r['path'] for r in self.files})
        self.assertEqual(len(expected),len(self.files))
        self.assertEqual(len(self.files),26536)

    def test_all_file_hashes(self):
        for r in self.files:
            data=(ROOT/r['path']).read_bytes()
            self.assertEqual(len(data),int(r['bytes']),r['path'])
            self.assertEqual(hashlib.sha256(data).hexdigest(),r['sha256'],r['path'])

    def test_summary_totals(self):
        self.assertEqual(sum(int(r['bytes']) for r in self.files),self.summary['total_bytes'])
        self.assertEqual(sum(v for k,v in self.summary['counts'].items() if k.endswith('_files') and k!='text_files'),len(self.files))

    def test_java_inventory(self):
        src=rows('sources.csv')
        self.assertEqual(len(src),11953)
        self.assertEqual(sum(r['path'].startswith('sources/') for r in src),11952)
        self.assertEqual(sum(int(r['decompiler_stubs']) for r in src),606)
        self.assertEqual(sum(int(r['app_namespace']) for r in src),160)

    def test_all_xml_parsed(self):
        xs=rows('xml.csv')
        self.assertEqual(len(xs),865)
        self.assertTrue(all(r['status']=='parsed' for r in xs))

    def test_zip_container_metadata(self):
        zs=rows('archives.csv')
        self.assertEqual(len(zs),400)
        self.assertTrue(all(r['encrypted']=='1' and r['entries']=='1' for r in zs))
        self.assertTrue(all(r['unsafe_paths']=='' for r in zs))
        self.assertTrue(all(r['crc']=='not_tested_encrypted' for r in zs))

    def test_png_chunks_and_crc(self):
        # Checks every chunk length and CRC. Does NOT decode IDAT pixel data.
        images=rows('images.csv')
        self.assertEqual(len(images),891)
        for r in images:
            d=(ROOT/r['path']).read_bytes()
            self.assertEqual(d[:8],b'\x89PNG\r\n\x1a\n',r['path'])
            off=8; ended=False
            while off<len(d):
                self.assertGreaterEqual(len(d)-off,12,r['path'])
                size=struct.unpack('>I',d[off:off+4])[0]
                stop=off+12+size
                self.assertLessEqual(stop,len(d),r['path'])
                chunk=d[off+4:off+8+size]
                crc=struct.unpack('>I',d[off+8+size:stop])[0]
                self.assertEqual(zlib.crc32(chunk)&0xffffffff,crc,r['path'])
                off=stop
                if chunk[:4]==b'IEND':
                    ended=True
                    self.assertEqual(off,len(d),r['path'])
            self.assertTrue(ended,r['path'])

    def test_gzip_crc_and_length(self):
        d=gzip.decompress((ROOT/'resources/okhttp3/internal/publicsuffix/publicsuffixes.gz').read_bytes())
        self.assertEqual(len(d),94651)

    def test_ogg_page_container_bounds(self):
        files=[r for r in self.files if r['extension']=='.ogg']
        self.assertEqual(len(files),11)
        for r in files:
            d=(ROOT/r['path']).read_bytes();off=0
            while off<len(d):
                self.assertGreaterEqual(len(d)-off,27,r['path'])
                self.assertEqual(d[off:off+4],b'OggS',r['path'])
                count=d[off+26];header_end=off+27+count
                self.assertLessEqual(header_end,len(d),r['path'])
                off=header_end+sum(d[header_end-count:header_end])
                self.assertLessEqual(off,len(d),r['path'])
            self.assertEqual(off,len(d))

    def test_font_table_bounds(self):
        files=[r for r in self.files if r['extension']=='.ttf']
        self.assertEqual(len(files),6)
        for r in files:
            d=(ROOT/r['path']).read_bytes()
            self.assertEqual(d[:4],b'\0\1\0\0',r['path'])
            count=struct.unpack('>H',d[4:6])[0]
            self.assertLessEqual(12+16*count,len(d),r['path'])
            for i in range(count):
                entry=d[12+i*16:28+i*16]
                start,length=struct.unpack('>II',entry[8:16])
                self.assertLessEqual(start+length,len(d),r['path'])

    def test_levels(self):
        ls=rows('levels.csv')
        self.assertEqual([int(r['id']) for r in ls],list(range(1,65)))
        self.assertEqual(sum(int(r['bundled_archives']) for r in ls),400)
        self.assertTrue(all(int(r['bundled_archives'])==20 for r in ls[:20]))
        self.assertTrue(all(int(r['bundled_archives'])==0 for r in ls[20:]))

    def test_components(self):
        cs=rows('components.csv')
        self.assertEqual(len(cs),76)
        self.assertEqual(sum(r['exported'] in {'true','implicit:true'} for r in cs),13)

    def test_dependencies_redact_oauth_values(self):
        ds=rows('dependencies.csv')
        row=next(r for r in ds if r['path']=='resources/assets/oauth_consumer.properties')
        self.assertEqual(row['metadata'].count('[REDACTED]'),4)
        self.assertEqual(len(ds),100)

    def test_index_row_counts(self):
        self.assertEqual(len(rows('packages.csv')),634)
        self.assertEqual(len(rows('binary-types.csv')),1321)
        self.assertEqual(len(rows('source-smali-diff.csv')),84+423)

if __name__=='__main__':
    unittest.main(verbosity=2)
