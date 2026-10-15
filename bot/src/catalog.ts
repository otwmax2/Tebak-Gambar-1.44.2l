import fs from 'node:fs';
import path from 'node:path';
import { createHash, randomInt } from 'node:crypto';
import { BOT_ROOT } from './config.js';
export interface Question {
  id: number;
  level: number;
  type: 'biasa' | 'raja';
  answer: string;
  image: string;
  sha256: string;
}
export interface Level {
  id: number;
  title: string;
  quote: string;
  subtitle: string;
}
export class Catalog {
  readonly questions: Question[];
  readonly levels: Level[];
  constructor(
    readonly assetRoot: string,
    manifestPath = path.join(BOT_ROOT, 'data/catalog.json'),
    verify = true,
  ) {
    const raw = JSON.parse(fs.readFileSync(manifestPath, 'utf8')) as {
      schemaVersion: number;
      questions: Question[];
      levels: Level[];
    };
    if (
      raw.schemaVersion !== 1 ||
      !Array.isArray(raw.questions) ||
      raw.questions.length !== 400 ||
      !Array.isArray(raw.levels) ||
      raw.levels.length !== 20
    )
      throw new Error('Expected catalog schema 1, 400 questions, 20 levels');
    this.questions = raw.questions;
    this.levels = raw.levels;
    this.questions.forEach((q, index) => {
      if (
        !q ||
        q.id !== index ||
        q.level !== Math.floor(index / 20) + 1 ||
        !['biasa', 'raja'].includes(q.type) ||
        typeof q.answer !== 'string' ||
        !q.answer.trim() ||
        [...q.answer].length > 200 ||
        typeof q.image !== 'string' ||
        !/^images\/level-\d{2}\/question-\d{3}\.png$/.test(q.image) ||
        typeof q.sha256 !== 'string' ||
        !/^[a-f0-9]{64}$/.test(q.sha256) ||
        q.type !== (index % 20 === 19 || (q.level >= 11 && index % 20 === 9) ? 'raja' : 'biasa')
      )
        throw new Error(`Invalid catalog entry ${index}`);
      const absolute = this.imagePath(q.id);
      if (
        verify &&
        createHash('sha256').update(fs.readFileSync(absolute)).digest('hex') !== q.sha256
      )
        throw new Error(`Asset SHA-256 mismatch at question ${q.id}`);
    });
    this.levels.forEach((l, index) => {
      if (
        !l ||
        l.id !== index + 1 ||
        typeof l.title !== 'string' ||
        !l.title.trim() ||
        typeof l.quote !== 'string' ||
        l.quote.length > 2000 ||
        typeof l.subtitle !== 'string'
      )
        throw new Error('Invalid level sequence');
    });
  }
  get(id: number): Question {
    const q = this.questions[id];
    if (!q || !Number.isInteger(id)) throw new Error('Soal tidak ditemukan.');
    return q;
  }
  imagePath(id: number): string {
    const q = this.questions[id];
    if (!q) throw new Error('Soal tidak ditemukan.');
    const result = path.resolve(this.assetRoot, q.image);
    if (!result.startsWith(path.resolve(this.assetRoot) + path.sep))
      throw new Error('Unsafe image path');
    const root = fs.realpathSync(this.assetRoot),
      resolved = fs.realpathSync(result);
    if (!resolved.startsWith(root + path.sep)) throw new Error('Unsafe image symlink');
    return result;
  }
  order(level: number, shuffle = true): number[] {
    if (!Number.isInteger(level) || level < 1 || level > 20) throw new Error('Level harus 1–20.');
    const start = (level - 1) * 20;
    const ids = Array.from({ length: 20 }, (_, i) => start + i);
    // Keep raja at checkpoint 10 (level 11+) and final question 20.
    const normals = ids.filter((id) => this.get(id).type === 'biasa');
    if (shuffle)
      for (let i = normals.length - 1; i > 0; i--) {
        const j = randomInt(i + 1);
        [normals[i], normals[j]] = [normals[j]!, normals[i]!];
      }
    let n = 0;
    return ids.map((id) => (this.get(id).type === 'raja' ? id : normals[n++]!));
  }
  dailyId(day: string): number {
    return createHash('sha256').update(`tebak-gambar:${day}`).digest().readUInt32BE(0) % 400;
  }
}
