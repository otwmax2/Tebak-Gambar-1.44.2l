import path from 'node:path';
import { fileURLToPath } from 'node:url';

// Resolve the project independently of cwd and tsx vs compiled dist execution.
export const BOT_ROOT = path.resolve(path.dirname(fileURLToPath(import.meta.url)), import.meta.url.includes('/dist/src/') ? '../..' : '..');
export interface Config {
  token: string; admins: Set<number>; database: string; assetRoot: string;
  maxLives: number; refillMs: number; initialHints: number; bossMs: number;
  dailyHints: number; dailyAnswers: number; shuffle: boolean; rateLimitMs: number;
  reminderMs: number; photoMaxBytes: number;
}
function integer(env: NodeJS.ProcessEnv, key: string, fallback: number, min: number, max: number): number {
  const value = Number(env[key] ?? fallback);
  if (!Number.isSafeInteger(value) || value < min || value > max) throw new Error(`${key} must be an integer between ${min} and ${max}`);
  return value;
}
export function readConfig(env: NodeJS.ProcessEnv = process.env): Config {
  const admins = (env.ADMIN_IDS ?? '').split(',').filter(Boolean).map(s => Number(s.trim()));
  if (admins.some(id => !Number.isSafeInteger(id) || id <= 0)) throw new Error('ADMIN_IDS must contain positive Telegram user IDs');
  const boolean = env.SHUFFLE_QUESTIONS ?? 'true';
  if (!['true', 'false'].includes(boolean)) throw new Error('SHUFFLE_QUESTIONS must be true or false');
  return {
    token: env.BOT_TOKEN ?? '', admins: new Set(admins),
    database: env.DATABASE_PATH === ':memory:' ? ':memory:' : path.resolve(BOT_ROOT, env.DATABASE_PATH ?? './runtime/game.sqlite'),
    assetRoot: path.resolve(BOT_ROOT, env.ASSET_ROOT ?? '../audit/decrypted-levels'),
    maxLives: integer(env, 'MAX_LIVES', 5, 1, 20),
    refillMs: integer(env, 'LIFE_REFILL_SECONDS', 600, 1, 86400) * 1000,
    initialHints: integer(env, 'INITIAL_HINTS', 5, 0, 100),
    bossMs: integer(env, 'BOSS_SECONDS', 60, 1, 3600) * 1000,
    dailyHints: integer(env, 'DAILY_HINT_REWARD', 2, 0, 100),
    dailyAnswers: integer(env, 'DAILY_FREE_ANSWERS', 1, 0, 10),
    shuffle: boolean === 'true', rateLimitMs: integer(env, 'RATE_LIMIT_MS', 750, 0, 60000),
    reminderMs: integer(env, 'REMINDER_INTERVAL_SECONDS', 30, 5, 3600) * 1000,
    photoMaxBytes: integer(env, 'PHOTO_MAX_BYTES', 5 * 1024 * 1024, 1024, 20 * 1024 * 1024),
  };
}
export function loadEnvironment(): void {
  try { process.loadEnvFile(path.join(BOT_ROOT, '.env')); }
  catch (e) { if ((e as NodeJS.ErrnoException).code !== 'ENOENT') throw e; }
}
