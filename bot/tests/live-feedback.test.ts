import { afterEach, beforeEach, expect, it } from 'vitest';
import sharp from 'sharp';
import { Catalog } from '../src/catalog.js';
import { readConfig } from '../src/config.js';
import { Engine } from '../src/engine.js';
import { Store } from '../src/store.js';
import { createRuntime, type Runtime } from '../src/bot.js';
import { MockTelegram, DEMO_BOT, textUpdate, callbackUpdate } from '../src/mock-telegram.js';
import { Media } from '../src/media.js';
import { resolveSound, SOUND_NAMES } from '../src/audio.js';
const cfg = readConfig({
  DATABASE_PATH: ':memory:',
  SHUFFLE_QUESTIONS: 'false',
  RATE_LIMIT_MS: '0',
  ADMIN_IDS: '99',
});
const catalog = new Catalog(cfg.assetRoot);
let store: Store, engine: Engine, runtime: Runtime, mock: MockTelegram, n: number;
beforeEach(() => {
  store = new Store(':memory:');
  engine = new Engine(store, catalog, cfg);
  runtime = createRuntime(engine, cfg, { botInfo: DEMO_BOT, rateLimit: false });
  mock = new MockTelegram();
  mock.attach(runtime.bot);
  n = 0;
});
afterEach(async () => {
  await runtime.close();
  store.close();
});
const send = (text: string, user = 1, chat = user) =>
  runtime.bot.handleUpdate(textUpdate(++n, text, user, chat));
const cb = (data: string, user = 1, chat = user) =>
  runtime.bot.handleUpdate(callbackUpdate(++n, data, user, chat));
const texts = () => mock.calls.map((c) => String(c.payload.text ?? '')).join('\n');
const buttons = () =>
  mock.calls.at(-1)!.payload.reply_markup as {
    inline_keyboard: { text: string; callback_data: string }[][];
  };
it('information commands do not create accounts after deletion', async () => {
  await send('/start');
  engine.delete(1);
  for (const cmd of [
    '/privacy',
    '/help',
    '/menu',
    '/version',
    '/sound',
    '/leaderboard',
    '/delete',
    '/status',
    '/export',
    '/cancel',
  ])
    await send(cmd);
  expect(store.player(1)).toBeUndefined();
  expect(texts()).toContain('Tidak ada data akun');
});
it('old delete buttons do not resurrect a deleted player', async () => {
  await send('/start');
  await send('/delete');
  const data = buttons().inline_keyboard[0]![0]!.callback_data;
  await cb(data);
  await cb(data);
  expect(store.player(1)).toBeUndefined();
});
it('ordinary text and unknown commands do not register new players', async () => {
  await send('hello');
  await send('/unknown');
  expect(store.player(1)).toBeUndefined();
});
it('an explicit play button can create a fresh account after deletion', async () => {
  await send('/start');
  engine.delete(1);
  await cb('play');
  expect(engine.current(1, 1)?.mode).toBe('progress');
});
it('bare start after a deep link opens the menu without replacing practice', async () => {
  await send('/start q_0');
  const sid = engine.current(1, 1)!.id;
  mock.calls.length = 0;
  await send('/start');
  expect(texts()).toContain('Selamat');
  expect(mock.calls.some((c) => c.method === 'sendPhoto')).toBe(false);
  expect(engine.current(1, 1)!.id).toBe(sid);
});
it('menu does not reset an active boss deadline', async () => {
  await send('/start');
  engine.progress(1, 1);
  store.run('UPDATE progress SET position=19 WHERE user_id=1');
  await send('/play');
  const s = engine.current(1, 1)!;
  await send('/menu');
  expect(engine.current(1, 1)).toEqual(s);
  expect(s.deadline).toBeGreaterThan(0);
});
it('invalid deep links do not silently switch sessions', async () => {
  await send('/play');
  const s = engine.current(1, 1)!;
  await send('/start q_bad');
  expect(texts()).toContain('Tautan mulai tidak valid');
  expect(engine.current(1, 1)!.id).toBe(s.id);
});
it('current question menu button continues scored progress rather than practice', async () => {
  await send('/questions');
  const first = buttons().inline_keyboard[0]![0]!;
  expect(first.text).toContain('#1');
  expect(first.callback_data).toBe('question:0');
  await cb(first.callback_data);
  expect(engine.current(1, 1)?.mode).toBe('progress');
  await send(catalog.get(0).answer);
  expect(engine.player(1).score).toBe(10);
});
it('a completed question menu button opens practice without score farming', async () => {
  await send('/play');
  await send(catalog.get(0).answer);
  await send('/questions');
  await cb(buttons().inline_keyboard[0]![0]!.callback_data);
  expect(engine.current(1, 1)?.mode).toBe('practice');
  await send(catalog.get(0).answer);
  expect(engine.player(1).score).toBe(10);
});
it('locked and forged question buttons cannot start future levels', async () => {
  await send('/questions');
  expect(buttons().inline_keyboard[0]![1]!.callback_data).toBe('locked');
  await cb('locked');
  await cb('question:399');
  await cb('question:999');
  expect(engine.current(1, 1)).toBeUndefined();
  expect(engine.progress(1, 1).position).toBe(0);
});
it('legacy practice callbacks remain compatible', async () => {
  await send('/start');
  await cb('practice:0');
  expect(engine.current(1, 1)?.mode).toBe('practice');
});
it('all audio aliases and canonical filenames resolve without arbitrary paths', () => {
  for (const sound of SOUND_NAMES) {
    expect(resolveSound(sound + '.ogg')).toBe(sound);
    expect(resolveSound(sound.replace(/^sound_/, '').toUpperCase())).toBe(sound);
  }
  for (const input of [
    '../sound_benar',
    'https://example.org/a',
    'sound_benar\n/sound sound_salah',
    '%2e%2e/a',
  ])
    expect(resolveSound(input)).toBeUndefined();
});
it('sound accepts checkpoint alias and rejects multi-command messages', async () => {
  await send('/sound checkpoint');
  expect(mock.calls.at(-1)?.upload).toContain('sound_checkpoint.ogg');
  const count = mock.files.size;
  await send('/sound sound_checkpoint\n/sound sound_click');
  expect(mock.files.size).toBe(count);
  expect(texts()).toContain('satu perintah');
});
it('sound callback acknowledges before file upload and creates no account', async () => {
  await cb('sound:sound_checkpoint');
  expect(mock.calls.map((c) => c.method)).toEqual(['answerCallbackQuery', 'sendDocument']);
  expect(store.player(1)).toBeUndefined();
});
it('audio callbacks reject groups and malformed paths', async () => {
  await cb('sound:sound_benar', 1, -100);
  await cb('sound:../x');
  expect(mock.calls.some((c) => c.method === 'sendDocument')).toBe(false);
});
it('leaderboard excludes legacy sentinel and zero-score accounts without deleting data', async () => {
  engine.touch(1, 'Human');
  engine.touch(2, 'New');
  store.run('UPDATE players SET score=10 WHERE id=1');
  store.run(
    "INSERT INTO players(id,name,lives,lives_at,created_at,score) VALUES(0,'Group',5,0,0,999)",
  );
  expect(engine.leaderboard()).toEqual([{ name: 'Human', score: 10 }]);
  await send('/admin', 99);
  expect(texts()).toContain('Admin: 2 pemain');
  expect(store.player(0)).toBeDefined();
});
it('empty leaderboard explains that no player has points yet', async () => {
  await send('/leaderboard');
  expect(texts()).toContain('Belum ada pemain dengan poin');
});
it('free answer gives distinct balance and mode explanations without consuming hints', async () => {
  await send('/play');
  const sid = engine.current(1, 1)!.id;
  await cb('free:' + sid);
  expect(texts()).toContain('Saldo free answer kosong');
  expect(engine.progress(1, 1).hints).toBe(5);
  await send('/stop');
  await send('/practice 1');
  await send('/freeanswer');
  expect(texts()).toContain('Mode latihan/tantangan');
});
it('boss free-answer refusal is different from empty balance', async () => {
  await send('/start');
  engine.progress(1, 1);
  store.run('UPDATE progress SET position=19 WHERE user_id=1');
  await send('/play');
  await send('/freeanswer');
  expect(texts()).toContain('Soal raja tidak mendukung');
});
it('version reports runtime and content without host paths or tokens', async () => {
  await send('/version');
  expect(texts()).toMatch(/Tebak Gambar v\d+\.\d+\.\d+/);
  expect(texts()).toContain('400 soal');
  expect(texts()).not.toContain('/home/');
  expect(texts()).not.toContain('BOT_TOKEN');
});
it.each([99, 100])('selfie at hint balance %s reports the actual capped delta', async (balance) => {
  const bytes = await sharp({
    create: { width: 100, height: 100, channels: 3, background: '#123456' },
  })
    .jpeg()
    .toBuffer();
  class Photos extends Media {
    override async download() {
      return bytes;
    }
  }
  await runtime.close();
  runtime = createRuntime(engine, cfg, {
    botInfo: DEMO_BOT,
    rateLimit: false,
    media: new Photos(cfg),
  });
  mock = new MockTelegram();
  mock.attach(runtime.bot);
  await send('/selfie');
  engine.progress(1, 1);
  store.run('UPDATE progress SET hints=? WHERE user_id=1', balance);
  const base = textUpdate(++n, '', 1, 1);
  if (!('message' in base) || !base.message) throw Error('fixture');
  await runtime.bot.handleUpdate({
    update_id: base.update_id,
    message: {
      ...base.message,
      photo: [{ file_id: 'test', file_unique_id: 'test', width: 100, height: 100 }],
    },
  });
  expect(texts()).toContain(`Bonus selfie +${100 - balance} hint`);
  expect(engine.progress(1, 1).hints).toBe(100);
});
