import fs from 'node:fs';
import path from 'node:path';
import { DatabaseSync } from 'node:sqlite';

/** Consistent hot-WAL snapshot; never overwrites, private from creation onward. */
export function createBackup(database: string, destination: string): void {
  const source = path.resolve(database),
    target = path.resolve(destination);
  if (database === ':memory:' || source === target || !fs.existsSync(source))
    throw new Error('Invalid backup source');
  fs.mkdirSync(path.dirname(target), { recursive: true, mode: 0o700 });
  const fd = fs.openSync(target, 'wx', 0o600);
  const identity = fs.fstatSync(fd);
  fs.closeSync(fd);
  try {
    const db = new DatabaseSync(source, { readOnly: true });
    try {
      db.exec('PRAGMA busy_timeout=5000');
      db.prepare('VACUUM INTO ?').run(target);
    } finally {
      db.close();
    }
    const saved = new DatabaseSync(target, { readOnly: true });
    try {
      const rows = saved.prepare('PRAGMA quick_check').all();
      if (rows.length !== 1 || rows[0]?.quick_check !== 'ok')
        throw new Error('Backup integrity failure');
    } finally {
      saved.close();
    }
    fs.chmodSync(target, 0o600);
  } catch (error) {
    if (fs.existsSync(target)) {
      const current = fs.statSync(target);
      if (current.ino === identity.ino && current.dev === identity.dev) fs.unlinkSync(target);
    }
    throw error;
  }
}
