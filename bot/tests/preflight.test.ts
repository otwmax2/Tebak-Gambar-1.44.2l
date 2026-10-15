import { afterEach, beforeEach, expect, it, vi } from 'vitest';
import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import { DatabaseSync } from 'node:sqlite';
import { readConfig, validProductionToken, type Config } from '../src/config.js';
import { preflight, type Check, type TelegramProbe } from '../src/preflight.js';
import { Store } from '../src/store.js';
let directory: string, config: Config;
beforeEach(() => {
  directory = fs.mkdtempSync(path.join(os.tmpdir(), 'tebak-preflight-'));
  config = {
    ...readConfig({ DATABASE_PATH: path.join(directory, 'game.sqlite') }),
    token: '123456:SYNTHETIC_NEVER_SENT_TO_TELEGRAM',
    admins: new Set([1]),
  };
});
afterEach(() => {
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
  fs.rmSync(directory, { recursive: true, force: true });
});
const status = (checks: Check[], name: string) =>
  checks.find((check) => check.name === name)?.status;
it('validates local assets and new storage without any network or game database creation', async () => {
  const fetch = vi.fn(() => {
    throw new Error('Unexpected network');
  });
  vi.stubGlobal('fetch', fetch);
  const checks = await preflight(config);
  expect(checks.some((c) => c.status === 'fail')).toBe(false);
  expect(status(checks, 'questions')).toBe('pass');
  expect(status(checks, 'frames')).toBe('pass');
  expect(status(checks, 'sounds')).toBe('pass');
  expect(fetch).not.toHaveBeenCalled();
  expect(fs.readdirSync(directory)).toEqual([]);
});
it('requires token in production; offline mode makes absence a warning', async () => {
  config.token = '';
  expect(status(await preflight(config), 'token')).toBe('fail');
  expect(status(await preflight(config, { offline: true }), 'token')).toBe('warn');
});
it('rejects in-memory production databases and Node versions below 22.13', async () => {
  config.database = ':memory:';
  const checks = await preflight(config, { nodeVersion: '22.12.0' });
  expect(status(checks, 'storage')).toBe('fail');
  expect(status(checks, 'node')).toBe('fail');
});
it('detects missing assets and frame/audio resources without exposing token or filesystem paths', async () => {
  config.assetRoot = path.join(directory, 'absent');
  const checks = await preflight(config, { resourceRoot: directory });
  for (const name of ['questions', 'frames', 'sounds']) expect(status(checks, name)).toBe('fail');
  expect(JSON.stringify(checks)).not.toContain(config.token);
  expect(JSON.stringify(checks)).not.toContain(directory);
});
it('detects unwriteable database directory (a file used as parent)', async () => {
  const file = path.join(directory, 'not-directory');
  fs.writeFileSync(file, 'test');
  config.database = path.join(file, 'db.sqlite');
  expect(status(await preflight(config), 'storage')).toBe('fail');
});
it('inspects a live SQLite WAL database read-only without changing player state', async () => {
  const store = new Store(config.database);
  store.run(
    'INSERT INTO players(id,name,lives,lives_at,created_at) VALUES(?,?,?,?,?)',
    1,
    'Synthetic user',
    5,
    1,
    1,
  );
  try {
    expect(status(await preflight(config), 'database')).toBe('pass');
    expect(store.player(1)?.score).toBe(0);
    expect(store.player(1)?.name).toBe('Synthetic user');
    expect(store.all('SELECT * FROM migrations')).toHaveLength(2);
    vi.spyOn(fs, 'accessSync').mockImplementation(() => {
      throw new Error('Permission denied');
    });
    expect(status(await preflight(config), 'database-write')).toBe('fail');
    vi.restoreAllMocks();
  } finally {
    store.close();
  }
  expect(fs.readdirSync(directory).some((name) => name.startsWith('.preflight-'))).toBe(false);
});
it('refuses corrupt database and unknown future migration versions', async () => {
  fs.writeFileSync(config.database, 'not SQLite');
  expect(status(await preflight(config), 'database')).toBe('fail');
  fs.unlinkSync(config.database);
  const store = new Store(config.database);
  store.run('INSERT INTO migrations(version) VALUES(99)');
  try {
    expect(status(await preflight(config), 'database')).toBe('fail');
  } finally {
    store.close();
  }
});
it('recognizes schema 1 needing startup migration without migrating during inspection', async () => {
  const store = new Store(config.database);
  store.run('DELETE FROM migrations WHERE version=2');
  store.close();
  expect(status(await preflight(config), 'database')).toBe('pass');
  const db = new DatabaseSync(config.database, { readOnly: true });
  try {
    expect(db.prepare('SELECT version FROM migrations').all()).toHaveLength(1);
  } finally {
    db.close();
  }
});
it('only explicit Telegram probe uses injected read-only API methods and warns about webhook/privacy', async () => {
  const probe: TelegramProbe = {
    getMe: vi.fn(async () => ({ is_bot: true, can_read_all_group_messages: false })),
    getWebhookInfo: vi.fn(async () => ({ url: 'https://example.invalid/secret-webhook-path' })),
  };
  await preflight(config, { offline: true, telegram: true, probe });
  expect(probe.getMe).not.toHaveBeenCalled();
  const checks = await preflight(config, { telegram: true, probe });
  expect(status(checks, 'telegram')).toBe('pass');
  expect(status(checks, 'webhook')).toBe('warn');
  expect(status(checks, 'group-privacy')).toBe('warn');
  expect(probe.getMe).toHaveBeenCalledOnce();
  expect(probe.getWebhookInfo).toHaveBeenCalledOnce();
  expect(JSON.stringify(checks)).not.toContain('secret-webhook-path');
});
it('never probes Telegram with invalid token and redacts keyed API failures', async () => {
  const probe: TelegramProbe = {
    getMe: vi.fn(async () => {
      throw new Error('https://api.telegram.org/bot' + config.token + '/getMe');
    }),
    getWebhookInfo: vi.fn(),
  };
  config.token = '';
  expect(status(await preflight(config, { telegram: true, probe }), 'telegram')).toBe('fail');
  expect(probe.getMe).not.toHaveBeenCalled();
  config.token = '123456:DO_NOT_LEAK_THIS_SYNTHETIC_TOKEN';
  const checks = await preflight(config, { telegram: true, probe });
  expect(status(checks, 'telegram')).toBe('fail');
  expect(JSON.stringify(checks)).not.toContain(config.token);
  expect(probe.getWebhookInfo).not.toHaveBeenCalled();
});
it('token syntax helper rejects known simulator placeholders and whitespace', () => {
  for (const token of [
    '',
    'wrong',
    ' 123:abcdef',
    '123456:OFFLINE_DEMO_ONLY',
    '123:MOCK_NEVER_SENT',
  ])
    expect(validProductionToken(token)).toBe(false);
  expect(validProductionToken(config.token)).toBe(true);
});
