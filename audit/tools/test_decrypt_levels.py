#!/usr/bin/env python3
"""Integration/negative-control tests for all 400 decrypted bundled ZIPs.
Run with optional dependencies installed and --out pointing to extraction output.
"""
import argparse
import collections
import csv
import hashlib
import io
import json
from pathlib import Path
import struct
import unittest

import pyzipper
from Cryptodome.Cipher import AES
from decrypt_levels import ROOT, JAVA_TRIM, load_key_material, validate_png

OUT = None


class DecryptionTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        with (OUT / 'results.csv').open(newline='') as f:
            cls.rows = list(csv.DictReader(f))
        cls.key, cls.iv = load_key_material()
        cls.summary = json.loads((OUT / 'summary.json').read_text())
        with (OUT/'archive-passwords.csv').open(newline='') as f:
            cls.passwords = {r['archive']: r['password'] for r in csv.DictReader(f)}

    def test_exact_all_archive_coverage(self):
        expected = {p.relative_to(ROOT).as_posix() for p in (ROOT / 'resources/assets/level').rglob('*.zip')}
        self.assertEqual(len(self.rows), 400)
        self.assertEqual({r['archive'] for r in self.rows}, expected)
        self.assertEqual(sorted(int(r['global_index']) for r in self.rows), list(range(400)))
        self.assertEqual(json.loads((OUT / 'failures.json').read_text()), [])

    def test_original_archives_unchanged(self):
        with (ROOT / 'audit/data/files.csv').open(newline='') as f:
            baseline = {r['path']: r['sha256'] for r in csv.DictReader(f)}
        for r in self.rows:
            sha = hashlib.sha256((ROOT / r['archive']).read_bytes()).hexdigest()
            self.assertEqual(sha, baseline[r['archive']])
            self.assertEqual(sha, r['archive_sha256'])

    def test_filename_and_metadata_all_400(self):
        self.assertEqual(len(self.passwords), 400)
        for r in self.rows:
            i = int(r['global_index'])
            self.assertEqual(self.passwords[r['archive']], hashlib.md5(str(i).encode()+self.key).hexdigest())
            p = ROOT / r['archive']
            self.assertEqual(p.stem, hashlib.md5(self.key + str(i).encode()).hexdigest())
            self.assertEqual(int(r['level']), i // 20 + 1)
            with pyzipper.AESZipFile(p) as z:
                entry = z.infolist()[0]
                plain = AES.new(self.key, AES.MODE_CBC, self.iv).decrypt(bytes.fromhex(entry.filename))
                self.assertEqual(plain.decode().strip(JAVA_TRIM), r['metadata'])
                fields = r['metadata'].split('#')
                self.assertEqual(int(fields[0]), i)
                self.assertEqual(fields[1], r['question_type'])
                self.assertEqual(int(fields[2]), int(r['level']))
                self.assertEqual(fields[3].replace('.png', ''), r['answer'])
                self.assertTrue(r['answer'])
                self.assertNotIn('\0', r['answer'])

    def test_authenticated_read_equals_output_all_400(self):
        for r in self.rows:
            password = hashlib.md5(r['global_index'].encode() + self.key).hexdigest().encode()
            with pyzipper.AESZipFile(ROOT / r['archive']) as z:
                data = z.read(z.infolist()[0], pwd=password)
            image = OUT / r['output_image']
            self.assertEqual(data, image.read_bytes())
            self.assertEqual(len(data), int(r['uncompressed_bytes']))
            self.assertEqual(hashlib.sha256(data).hexdigest(), r['image_sha256'])

    def test_wrong_password_rejected_all_400(self):
        for r in self.rows:
            with pyzipper.AESZipFile(ROOT / r['archive']) as z:
                with self.assertRaises(RuntimeError, msg=r['archive']):
                    z.read(z.infolist()[0], pwd=b'negative-control-not-a-derived-password')

    def test_modified_authentication_tag_rejected_all_400(self):
        for r in self.rows:
            p = ROOT / r['archive']
            with pyzipper.AESZipFile(p) as z:
                e = z.infolist()[0]
                offset, size = e.header_offset, e.compress_size
            data = bytearray(p.read_bytes())
            name_length, extra_length = struct.unpack_from('<HH', data, offset + 26)
            payload_start = offset + 30 + name_length + extra_length
            # Flip one byte of the AES authentication tag, not compressed data.
            data[payload_start + size - 1] ^= 1
            password = hashlib.md5(r['global_index'].encode() + self.key).hexdigest().encode()
            with pyzipper.AESZipFile(io.BytesIO(data)) as z:
                with self.assertRaises(pyzipper.BadZipFile, msg=r['archive']) as caught:
                    z.read(z.infolist()[0], pwd=password)
                self.assertIn('HMAC', str(caught.exception))

    def test_full_png_validation_and_pixel_decode_all_400(self):
        for r in self.rows:
            info = validate_png((OUT / r['output_image']).read_bytes())
            self.assertEqual(info['image_format'], 'PNG')
            self.assertEqual(info['width'], 400)
            self.assertEqual(info['height'], 400 if r['question_type'] == 'biasa' else 480)
            self.assertEqual([c['type'] for c in info['chunks']], ['IHDR', 'PLTE', 'IDAT', 'IEND'])
            self.assertEqual(info['trailing_bytes'], 0)

    def test_type_and_compression_distributions(self):
        self.assertEqual(collections.Counter(r['question_type'] for r in self.rows), {'biasa': 370, 'raja': 30})
        self.assertEqual(collections.Counter(r['zip_compression'] for r in self.rows), {'stored': 196, 'deflate': 204})
        for level in range(1, 21):
            subset = [r for r in self.rows if int(r['level']) == level]
            self.assertEqual(len(subset), 20)
            self.assertEqual(sum(r['question_type'] == 'raja' for r in subset), 1 if level <= 10 else 2)
        self.assertEqual(len({r['image_sha256'] for r in self.rows}), 400)

    def test_full_processing_log_and_detail_files(self):
        lines = (OUT / 'processing.log').read_text().splitlines()
        self.assertEqual(len(lines), 400)
        self.assertTrue(all(' OK ' in line for line in lines))
        self.assertEqual(len(list((OUT / 'details').glob('*.json'))), 400)
        self.assertEqual(len(list((OUT / 'images').rglob('*.png'))), 400)
        for r in self.rows:
            detail = json.loads((OUT / 'details' / f"question-{int(r['global_index']):03d}.json").read_text())
            self.assertEqual(detail['archive_sha256'], r['archive_sha256'])
            self.assertEqual(detail['image_sha256'], r['image_sha256'])

    def test_repository_scan_and_summary_consistency(self):
        with (OUT / 'repository-scan.csv').open(newline='') as f:
            scan = list(csv.DictReader(f))
        self.assertEqual(len(scan), 26562)
        self.assertEqual(self.summary['tracked_files_read'], len(scan))
        self.assertEqual(self.summary['opened'], 400)
        self.assertEqual(self.summary['failed'], 0)
        self.assertEqual(self.summary['total_image_bytes'], sum(int(r['uncompressed_bytes']) for r in self.rows))
        self.assertTrue(self.summary['all_zip_authentication_passed'])
        self.assertTrue(self.summary['all_png_verified_and_decoded'])


if __name__ == '__main__':
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--out', required=True, type=Path)
    args, remaining = p.parse_known_args()
    OUT = args.out.resolve()
    unittest.main(argv=['test_decrypt_levels.py'] + remaining, verbosity=2)
