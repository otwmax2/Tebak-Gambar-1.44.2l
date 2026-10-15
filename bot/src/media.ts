import path from 'node:path';
import sharp from 'sharp';
import { BOT_ROOT, type Config } from './config.js';
import { GameError } from './engine.js';
export class Media {
  constructor(readonly config: Config) {}
  async frame(photo: Buffer, level: number): Promise<Buffer> {
    if (photo.byteLength > this.config.photoMaxBytes) throw new GameError('Foto terlalu besar.');
    if (!Number.isInteger(level) || level < 1 || level > 19 || level % 2 !== 1)
      throw new GameError('Frame tersedia pada level ganjil 1–19.');
    const isJpeg = photo.length >= 3 && photo[0] === 255 && photo[1] === 216 && photo[2] === 255;
    const isPng = photo.subarray(0, 8).equals(Buffer.from([137, 80, 78, 71, 13, 10, 26, 10]));
    const isWebp =
      photo.length >= 12 &&
      photo.toString('ascii', 0, 4) === 'RIFF' &&
      photo.toString('ascii', 8, 12) === 'WEBP';
    if (!isJpeg && !isPng && !isWebp) throw new GameError('Foto harus JPEG, PNG, atau WebP.');
    const framePath = path.join(BOT_ROOT, '../resources/res/drawable', `level_${level}.png`);
    const frame = await sharp(framePath).resize(500, 500).png().toBuffer();
    const raw = await sharp(frame).ensureAlpha().raw().toBuffer();
    let left = 500,
      top = 500,
      right = -1,
      bottom = -1;
    for (let y = 0; y < 500; y++)
      for (let x = 0; x < 500; x++)
        if (raw[(y * 500 + x) * 4 + 3]! < 128) {
          left = Math.min(left, x);
          right = Math.max(right, x);
          top = Math.min(top, y);
          bottom = Math.max(bottom, y);
        }
    if (right < left || bottom < top) throw new GameError('Frame tidak memiliki area foto.');
    let crop: Buffer;
    try {
      crop = await sharp(photo, { limitInputPixels: 20_000_000 })
        .rotate()
        .resize(right - left + 1, bottom - top + 1, { fit: 'cover' })
        .png()
        .toBuffer();
    } catch {
      throw new GameError(
        'Foto tidak valid atau terlalu besar. Kirim JPEG/PNG sebagai photo Telegram.',
      );
    }
    return sharp({ create: { width: 500, height: 500, channels: 4, background: '#ffffff' } })
      .composite([{ input: crop, left, top }, { input: frame }])
      .jpeg({ quality: 90 })
      .toBuffer();
  }
  async sticker(imagePath: string): Promise<Buffer> {
    const result = await sharp(imagePath)
      .resize(512, 512, { fit: 'inside' })
      .webp({ quality: 80 })
      .toBuffer();
    if (result.length > 512 * 1024) throw new GameError('Stiker terlalu besar.');
    return result;
  }
  async download(filePath: string): Promise<Buffer> {
    if (
      !/^[a-zA-Z0-9_./-]+$/.test(filePath) ||
      filePath.startsWith('/') ||
      filePath.split('/').includes('..')
    )
      throw new GameError('File Telegram tidak valid.');
    const response = await fetch(
      `https://api.telegram.org/file/bot${this.config.token}/${filePath}`,
      { signal: AbortSignal.timeout(15000), redirect: 'error' },
    );
    if (!response.ok || !response.body) {
      await response.body?.cancel();
      throw new GameError('Foto belum dapat diunduh.');
    }
    if (Number(response.headers.get('content-length')) > this.config.photoMaxBytes) {
      await response.body.cancel();
      throw new GameError('Foto terlalu besar.');
    }
    const reader = response.body.getReader();
    const chunks: Buffer[] = [];
    let total = 0;
    try {
      while (true) {
        const { done, value } = await reader.read();
        if (done) break;
        total += value.length;
        if (total > this.config.photoMaxBytes) throw new GameError('Foto terlalu besar.');
        chunks.push(Buffer.from(value));
      }
    } finally {
      try {
        await reader.cancel();
      } catch {
        /* preserve original bounded-read error */
      }
      reader.releaseLock();
    }
    return Buffer.concat(chunks);
  }
}
