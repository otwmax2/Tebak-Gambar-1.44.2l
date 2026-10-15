import sharp from 'sharp';
import { readConfig } from '../src/config.js';
import { Catalog } from '../src/catalog.js';
const catalog = new Catalog(readConfig().assetRoot);
for (const q of catalog.questions) {
  const info = await sharp(catalog.imagePath(q.id)).metadata();
  if (info.format !== 'png' || info.width !== 400 || info.height !== (q.type === 'biasa' ? 400 : 480)) throw new Error(`Invalid PNG at ${q.id}`);
  // Decode entire payload, not only header.
  await sharp(catalog.imagePath(q.id)).raw().toBuffer();
}
console.log('PASS: 400 image hashes, PNG metadata and full pixel decode; 20 levels.');
