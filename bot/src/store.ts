import { DatabaseSync } from 'node:sqlite';
import fs from 'node:fs';
import path from 'node:path';
export interface Player {
  id: number;
  name: string;
  lives: number;
  lives_at: number;
  unlocked: number;
  selected: number;
  score: number;
  free_answers: number;
  daily_claim: string;
  photo_day: string;
  awaiting_photo: number;
  reminders: number;
  reminder_pending: number;
  private_chat: number | null;
  created_at: number;
}
export interface Progress {
  user_id: number;
  level: number;
  order_json: string;
  position: number;
  checkpoint: number;
  hints: number;
}
export type Mode = 'progress' | 'practice' | 'daily' | 'group';
export interface Session {
  id: string;
  chat_id: number;
  user_id: number;
  initiator: number;
  mode: Mode;
  question_id: number;
  level: number;
  position: number;
  started_at: number;
  deadline: number;
  active: number;
  message_id: number | null;
  revealed: string;
  day: string;
}
export interface Job {
  id: number;
  user_id: number;
  chat_id: number;
  body: string;
  attempts: number;
  next_at: number;
  key: string;
}
export const SCHEMA_VERSION = 2;
export class Store {
  readonly db: DatabaseSync;
  private closed = false;
  constructor(filename: string) {
    if (filename !== ':memory:')
      fs.mkdirSync(path.dirname(filename), { recursive: true, mode: 0o700 });
    this.db = new DatabaseSync(filename);
    try {
      if (
        this.db
          .prepare("SELECT 1 FROM sqlite_master WHERE type='table' AND name='migrations'")
          .get()
      ) {
        const versions = this.db
          .prepare('SELECT version FROM migrations')
          .all()
          .map((row) => Number(row.version));
        if (
          !versions.includes(1) ||
          versions.some(
            (version) => !Number.isInteger(version) || version < 1 || version > SCHEMA_VERSION,
          )
        )
          throw new Error(
            'Unsupported database schema; backup and use the matching application version.',
          );
      }
      this.db.exec('PRAGMA foreign_keys=ON; PRAGMA busy_timeout=5000; PRAGMA journal_mode=WAL;');
      this.db.exec(`
      CREATE TABLE IF NOT EXISTS migrations(version INTEGER PRIMARY KEY);
      CREATE TABLE IF NOT EXISTS players(
        id INTEGER PRIMARY KEY, name TEXT NOT NULL, lives INTEGER NOT NULL, lives_at INTEGER NOT NULL,
        unlocked INTEGER NOT NULL DEFAULT 1, selected INTEGER NOT NULL DEFAULT 1, score INTEGER NOT NULL DEFAULT 0,
        free_answers INTEGER NOT NULL DEFAULT 0, daily_claim TEXT NOT NULL DEFAULT '', photo_day TEXT NOT NULL DEFAULT '', awaiting_photo INTEGER NOT NULL DEFAULT 0,
        reminders INTEGER NOT NULL DEFAULT 0, reminder_pending INTEGER NOT NULL DEFAULT 0, private_chat INTEGER,
        created_at INTEGER NOT NULL);
      CREATE TABLE IF NOT EXISTS progress(
        user_id INTEGER NOT NULL REFERENCES players(id) ON DELETE CASCADE, level INTEGER NOT NULL,
        order_json TEXT NOT NULL, position INTEGER NOT NULL DEFAULT 0, checkpoint INTEGER NOT NULL DEFAULT 0,
        hints INTEGER NOT NULL, PRIMARY KEY(user_id,level));
      CREATE TABLE IF NOT EXISTS sessions(
        id TEXT PRIMARY KEY, chat_id INTEGER NOT NULL, user_id INTEGER NOT NULL, initiator INTEGER NOT NULL,
        mode TEXT NOT NULL, question_id INTEGER NOT NULL, level INTEGER NOT NULL, position INTEGER NOT NULL,
        started_at INTEGER NOT NULL, deadline INTEGER NOT NULL DEFAULT 0, active INTEGER NOT NULL DEFAULT 1,
        message_id INTEGER, revealed TEXT NOT NULL DEFAULT '[]', day TEXT NOT NULL DEFAULT '');
      CREATE UNIQUE INDEX IF NOT EXISTS active_session ON sessions(chat_id,user_id) WHERE active=1;
      CREATE TABLE IF NOT EXISTS hints_state(user_id INTEGER NOT NULL REFERENCES players(id) ON DELETE CASCADE, question_id INTEGER NOT NULL, revealed TEXT NOT NULL, PRIMARY KEY(user_id,question_id));
      CREATE TABLE IF NOT EXISTS solves(user_id INTEGER NOT NULL REFERENCES players(id) ON DELETE CASCADE, question_id INTEGER NOT NULL, earned INTEGER NOT NULL, solved_at INTEGER NOT NULL, PRIMARY KEY(user_id,question_id));
      CREATE TABLE IF NOT EXISTS awards(user_id INTEGER NOT NULL REFERENCES players(id) ON DELETE CASCADE, award_key TEXT NOT NULL, PRIMARY KEY(user_id,award_key));
      CREATE TABLE IF NOT EXISTS suggestions(id INTEGER PRIMARY KEY AUTOINCREMENT, user_id INTEGER NOT NULL REFERENCES players(id) ON DELETE CASCADE, body TEXT NOT NULL, created_at INTEGER NOT NULL);
      CREATE TABLE IF NOT EXISTS jobs(id INTEGER PRIMARY KEY AUTOINCREMENT, user_id INTEGER NOT NULL REFERENCES players(id) ON DELETE CASCADE, chat_id INTEGER NOT NULL, body TEXT NOT NULL, attempts INTEGER NOT NULL DEFAULT 0, next_at INTEGER NOT NULL, key TEXT NOT NULL UNIQUE);
      CREATE TABLE IF NOT EXISTS updates(id INTEGER PRIMARY KEY, created_at INTEGER NOT NULL);
      INSERT OR IGNORE INTO migrations(version) VALUES(1);
      INSERT OR IGNORE INTO migrations(version) VALUES(2);
    `);
      this.db.exec(
        'CREATE INDEX IF NOT EXISTS session_deadlines ON sessions(deadline) WHERE active=1 AND deadline>0; CREATE INDEX IF NOT EXISTS jobs_due ON jobs(next_at,id); CREATE INDEX IF NOT EXISTS suggestions_daily ON suggestions(user_id,created_at); CREATE INDEX IF NOT EXISTS updates_age ON updates(created_at);',
      );
    } catch (error) {
      this.db.close();
      throw error;
    }
    if (filename !== ':memory:') {
      try {
        for (const suffix of ['', '-wal', '-shm'])
          if (fs.existsSync(filename + suffix)) fs.chmodSync(filename + suffix, 0o600);
      } catch {
        /* permissions may be host-managed */
      }
    }
  }
  transaction<T>(fn: () => T): T {
    if (fn.constructor.name === 'AsyncFunction')
      throw new TypeError('SQLite transactions must be synchronous');
    this.db.exec('BEGIN IMMEDIATE');
    try {
      const result = fn();
      if (result && typeof (result as { then?: unknown }).then === 'function')
        throw new TypeError('SQLite transactions must be synchronous');
      this.db.exec('COMMIT');
      return result;
    } catch (e) {
      this.db.exec('ROLLBACK');
      throw e;
    }
  }
  get<T>(sql: string, ...args: (string | number | null)[]): T | undefined {
    return this.db.prepare(sql).get(...args) as T | undefined;
  }
  all<T>(sql: string, ...args: (string | number | null)[]): T[] {
    return this.db.prepare(sql).all(...args) as T[];
  }
  run(sql: string, ...args: (string | number | null)[]): number {
    return Number(this.db.prepare(sql).run(...args).changes);
  }
  player(id: number): Player | undefined {
    return this.get<Player>('SELECT * FROM players WHERE id=?', id);
  }
  session(id: string): Session | undefined {
    return this.get<Session>('SELECT * FROM sessions WHERE id=?', id);
  }
  close(): void {
    if (!this.closed) {
      this.closed = true;
      this.db.close();
    }
  }
}
