import fs from 'node:fs';
import path from 'node:path';
import { DatabaseSync } from 'node:sqlite';

export class InstanceLockError extends Error {}

/**
 * Hold an OS-backed SQLite exclusive transaction on a separate file, never the
 * game database. The kernel releases locks on crash/SIGKILL, so no PID-file
 * guessing or unsafe stale-lock deletion is necessary. Local filesystems only.
 * Never unlink/replace the lock file while a process can be running.
 */
export function acquireInstanceLock(database: string): () => void {
  if (database === ':memory:') throw new Error('Persistent database required');
  const absolute = path.resolve(database);
  fs.mkdirSync(path.dirname(absolute), { recursive: true, mode: 0o700 });
  if (
    !fs.existsSync(absolute) &&
    fs.lstatSync(absolute, { throwIfNoEntry: false })?.isSymbolicLink()
  )
    throw new InstanceLockError('Dangling database symlink is not supported');
  const canonical = fs.existsSync(absolute)
    ? fs.realpathSync(absolute)
    : path.join(fs.realpathSync(path.dirname(absolute)), path.basename(absolute));
  const filename = `${canonical}.instance.sqlite`;
  const db = new DatabaseSync(filename);
  try {
    fs.chmodSync(filename, 0o600);
    db.exec('PRAGMA busy_timeout=0; BEGIN EXCLUSIVE');
  } catch {
    db.close();
    throw new InstanceLockError('Instance lock unavailable. Stop the other local bot process.');
  }
  let released = false;
  return () => {
    if (released) return;
    released = true;
    try {
      db.exec('ROLLBACK');
    } finally {
      db.close();
    }
  };
}
