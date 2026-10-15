import { beforeEach, afterEach, expect, it } from 'vitest';
import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import { spawn } from 'node:child_process';
import { once } from 'node:events';
import { DatabaseSync } from 'node:sqlite';
import { Store } from '../src/store.js';
import { Engine } from '../src/engine.js';
import { Catalog } from '../src/catalog.js';
import { BOT_ROOT, readConfig } from '../src/config.js';
import { acquireInstanceLock } from '../src/instance-lock.js';
import { createBackup } from '../src/backup.js';
const config = readConfig({ DATABASE_PATH: ':memory:', SHUFFLE_QUESTIONS: 'false' }),
  catalog = new Catalog(config.assetRoot);
let directory: string, store: Store, engine: Engine, clock: number;
beforeEach(() => {
  directory = fs.mkdtempSync(path.join(os.tmpdir(), 'tg-upgrade-'));
  store = new Store(':memory:');
  clock = Date.parse('2026-10-15T08:00:00Z');
  engine = new Engine(store, catalog, config, () => clock);
  engine.touch(1, 'Synthetic', 1);
});
afterEach(() => {
  store.close();
  fs.rmSync(directory, { recursive: true, force: true });
});
const solve = () => {
  const s = engine.start(1, 1);
  return engine.answer(s.id, 1, 1, catalog.get(s.question_id).answer);
};
it('permits practice for a solved question ahead of rollback position', () => {
  solve();
  solve();
  const s = engine.start(1, 1);
  for (let i = 0; i < 5; i++) engine.answer(s.id, 1, 1, 'zzxxqqww');
  expect(engine.progress(1, 1).position).toBe(0);
  expect(engine.start(1, 1, 'practice', 1).question_id).toBe(1);
});
it('does not refund daily gifts when wall clock goes backwards', () => {
  engine.claimDaily(1);
  clock -= 86400000;
  expect(() => engine.claimDaily(1)).toThrow('sudah');
  expect(engine.player(1).free_answers).toBe(1);
});
it('does not refund selfie credits on a previous UTC date', () => {
  engine.requestPhoto(1, 1);
  engine.photoReward(1);
  clock -= 86400000;
  expect(engine.photoReward(1)).toBe(false);
  expect(engine.progress(1, 1).hints).toBe(7);
});
it('daily response reports actual grants at caps, not promised values', () => {
  engine.progress(1, 1);
  store.run('UPDATE progress SET hints=99');
  store.run('UPDATE players SET free_answers=3');
  expect(engine.claimDaily(1)).toEqual({ hints: 1, answers: 0, level: 1 });
});
it('domain rejects invalid/locked/even photo frame selections', () => {
  for (const level of [0, 2, 3, 21, NaN]) expect(() => engine.requestPhoto(1, level)).toThrow();
  expect(engine.player(1).awaiting_photo).toBe(0);
});
it('domain separates private progress from group sessions', () => {
  expect(() => engine.start(-100, 1)).toThrow('chat');
  expect(() => engine.start(1, 1, 'group')).toThrow('chat');
});
it('outbox stops after exactly five failed attempts', () => {
  engine.queue(1, 1, 'fixture', 'five');
  for (let i = 0; i < 5; i++) {
    const job = engine.jobs()[0]!;
    expect(job).toBeDefined();
    engine.jobFailed(job);
    clock += 300000;
  }
  expect(engine.jobs()).toHaveLength(0);
});
it('blank numeric environment does not silently disable rate protection', () => {
  expect(() => readConfig({ RATE_LIMIT_MS: '' })).toThrow();
  expect(readConfig({ RATE_LIMIT_MS: '0' }).rateLimitMs).toBe(0);
  expect(readConfig().apiTimeoutSeconds).toBe(45);
});
it('Store refuses future schemas before applying pragmas or migrations', () => {
  const file = path.join(directory, 'future.sqlite');
  const db = new DatabaseSync(file);
  db.exec('CREATE TABLE migrations(version INTEGER);INSERT INTO migrations VALUES(99)');
  db.close();
  const before = fs.readFileSync(file);
  expect(() => new Store(file)).toThrow('Unsupported');
  expect(fs.readFileSync(file)).toEqual(before);
});
it('Store rejects async transactions before executing callback', () => {
  let called = false;
  expect(() =>
    store.transaction(async () => {
      called = true;
      store.run('UPDATE players SET score=100');
    }),
  ).toThrow('synchronous');
  expect(called).toBe(false);
  expect(engine.player(1).score).toBe(0);
});
it('thenable returned by a normal callback rolls back synchronous writes', () => {
  expect(() =>
    store.transaction(() => {
      store.run('UPDATE players SET score=100');
      return Promise.resolve(1);
    }),
  ).toThrow('synchronous');
  expect(engine.player(1).score).toBe(0);
});
it('runtime query indexes exist and Store.close is idempotent', () => {
  const names = store
    .all<{ name: string }>("SELECT name FROM sqlite_master WHERE type='index'")
    .map((x) => x.name);
  expect(names).toEqual(
    expect.arrayContaining(['session_deadlines', 'jobs_due', 'suggestions_daily', 'updates_age']),
  );
  store.close();
  store.close();
});
it('exclusive instance lock rejects competing owner and allows clean reacquisition', () => {
  const file = path.join(directory, 'game.sqlite'),
    release = acquireInstanceLock(file);
  try {
    expect(() => acquireInstanceLock(file)).toThrow('Instance lock');
    expect(fs.statSync(file + '.instance.sqlite').mode & 0o777).toBe(0o600);
  } finally {
    release();
    release();
  }
  acquireInstanceLock(file)();
});
it('canonical directory aliases share the same instance lock', () => {
  const real = path.join(directory, 'real'),
    alias = path.join(directory, 'alias');
  fs.mkdirSync(real);
  fs.symlinkSync(real, alias);
  const release = acquireInstanceLock(path.join(real, 'game.sqlite'));
  try {
    expect(() => acquireInstanceLock(path.join(alias, 'game.sqlite'))).toThrow('Instance lock');
  } finally {
    release();
  }
});
it('OS releases instance lock on SIGKILL without deleting stale files', async () => {
  const file = path.join(directory, 'crash.sqlite');
  const source = `import {acquireInstanceLock} from './src/instance-lock.ts';acquireInstanceLock(${JSON.stringify(file)});console.log('READY');setInterval(()=>{},1000);`;
  const child = spawn(process.execPath, ['--import', 'tsx', '--input-type=module', '-e', source], {
    cwd: BOT_ROOT,
    stdio: ['ignore', 'pipe', 'pipe'],
  });
  try {
    await new Promise<void>((resolve, reject) => {
      child.stdout.once('data', () => resolve());
      child.once('error', reject);
      child.once('exit', () => reject(new Error('Child exited before ready')));
    });
    expect(() => acquireInstanceLock(file)).toThrow('Instance lock');
    const exit = once(child, 'exit');
    child.kill('SIGKILL');
    await exit;
    expect(fs.existsSync(file + '.instance.sqlite')).toBe(true);
    acquireInstanceLock(file)();
  } finally {
    if (child.exitCode === null && child.signalCode === null) {
      const exit = once(child, 'exit');
      child.kill('SIGKILL');
      await exit;
    }
  }
});
it('snapshot remains private and refuses existing/symlink destinations', () => {
  const source = path.join(directory, 'source.sqlite'),
    target = path.join(directory, 'copy.sqlite');
  const db = new Store(source);
  try {
    createBackup(source, target);
    expect(fs.statSync(target).mode & 0o777).toBe(0o600);
    expect(() => createBackup(source, target)).toThrow();
    const link = path.join(directory, 'link.sqlite');
    fs.symlinkSync(source, link);
    expect(() => createBackup(source, link)).toThrow();
  } finally {
    db.close();
  }
});
it('failed snapshot removes only its newly reserved output', () => {
  const source = path.join(directory, 'bad.sqlite'),
    target = path.join(directory, 'bad-copy.sqlite');
  fs.writeFileSync(source, 'invalid database');
  expect(() => createBackup(source, target)).toThrow();
  expect(fs.existsSync(target)).toBe(false);
  expect(fs.readFileSync(source, 'utf8')).toBe('invalid database');
});
it('catalog rejects malformed levels, wrong boss slots and non-PNG paths', () => {
  const raw = JSON.parse(fs.readFileSync(path.join(BOT_ROOT, 'data/catalog.json'), 'utf8'));
  const manifest = path.join(directory, 'catalog.json');
  for (const change of [
    (r: typeof raw) => {
      r.levels = null;
    },
    (r: typeof raw) => {
      r.questions[0].type = 'raja';
    },
    (r: typeof raw) => {
      r.questions[0].image = '../.env';
    },
  ]) {
    const copy = structuredClone(raw);
    change(copy);
    fs.writeFileSync(manifest, JSON.stringify(copy));
    expect(() => new Catalog(config.assetRoot, manifest)).toThrow();
  }
});
it('catalog refuses an image symlink escaping the asset root', () => {
  const root = path.join(directory, 'assets'),
    level = path.join(root, 'images/level-01');
  fs.mkdirSync(level, { recursive: true });
  fs.symlinkSync(catalog.imagePath(0), path.join(level, 'question-000.png'));
  expect(() => new Catalog(root)).toThrow('symlink');
});

it('refuses a dangling database symlink before creating an alias lock', () => {
  const alias = path.join(directory, 'alias.sqlite'),
    target = path.join(directory, 'missing.sqlite');
  fs.symlinkSync(target, alias);
  expect(() => acquireInstanceLock(alias)).toThrow('Dangling');
  expect(fs.existsSync(target)).toBe(false);
  expect(fs.existsSync(alias + '.instance.sqlite')).toBe(false);
});
