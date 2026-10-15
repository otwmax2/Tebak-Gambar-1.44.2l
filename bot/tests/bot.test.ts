import { beforeEach, afterEach, expect, it, vi } from 'vitest';
import sharp from 'sharp';
import { Media } from '../src/media.js';
import { HttpError } from 'grammy';
import { createRuntime, type Runtime } from '../src/bot.js';
import { Engine } from '../src/engine.js';
import { Catalog } from '../src/catalog.js';
import { Store } from '../src/store.js';
import { readConfig } from '../src/config.js';
import { MockTelegram, DEMO_BOT, textUpdate, callbackUpdate } from '../src/mock-telegram.js';
const cfg = readConfig({
  DATABASE_PATH: ':memory:',
  SHUFFLE_QUESTIONS: 'false',
  ADMIN_IDS: '99',
  RATE_LIMIT_MS: '0',
});
let store: Store, engine: Engine, runtime: Runtime, mock: MockTelegram, n: number;
beforeEach(() => {
  store = new Store(':memory:');
  engine = new Engine(store, new Catalog(cfg.assetRoot), cfg);
  runtime = createRuntime(engine, cfg, { botInfo: DEMO_BOT, rateLimit: false });
  mock = new MockTelegram();
  mock.attach(runtime.bot);
  n = 0;
});
afterEach(() => {
  runtime.close();
  store.close();
});
const send = (text: string, user = 1, chat = user) =>
  runtime.bot.handleUpdate(textUpdate(++n, text, user, chat));
const cb = (data: string, user = 1, chat = user) =>
  runtime.bot.handleUpdate(callbackUpdate(++n, data, user, chat));
const messages = () =>
  mock.calls
    .filter((c) => c.method === 'sendMessage')
    .map((c) => String(c.payload.text))
    .join('\n');
it('onboards with real grammY command entity parsing', async () => {
  await send('/start');
  expect(messages()).toContain('Selamat');
  expect(mock.calls[0]?.payload.reply_markup).toBeDefined();
});
it('uploads a real decrypted image on /play and verifies correct answer flow', async () => {
  await send('/play');
  expect(mock.calls[0]?.method).toBe('sendPhoto');
  expect(mock.files.size).toBe(1);
  await send('JAMBU BATU');
  expect(messages()).toContain('✅ jambu batu');
  expect(engine.player(1).score).toBe(10);
});
it('callback hint is nonce/user/chat protected', async () => {
  await send('/play');
  const sid = engine.current(1, 1)!.id;
  await cb(`hint:${sid}`, 2, 1);
  expect(mock.calls.at(-1)?.payload.text).toContain('milikmu');
  expect(engine.progress(1, 1).hints).toBe(5);
  await cb(`hint:${sid}`);
  expect(engine.progress(1, 1).hints).toBe(4);
});
it('stale hint does not deduct currency', async () => {
  await send('/play');
  const sid = engine.current(1, 1)!.id;
  await send('jambu batu');
  await cb(`hint:${sid}`);
  expect(mock.calls.at(-1)?.payload.text).toContain('kedaluwarsa');
});
it('next callback opens the next question only for its owner', async () => {
  await send('/play');
  const sid = engine.current(1, 1)!.id;
  await send('jambu batu');
  await cb(`next:${sid}`);
  expect(engine.current(1, 1)?.question_id).toBe(1);
});
it('daily and free answer commands work and cannot be replayed', async () => {
  await send('/daily');
  await send('/daily');
  expect(messages()).toContain('sudah');
  await send('/play');
  await send('/freeanswer');
  expect(engine.player(1).free_answers).toBe(0);
  expect(engine.progress(1, 1).position).toBe(1);
});
it('unknown command and invalid level give user-facing errors', async () => {
  await send('/unknown');
  await send('/play banana');
  await send('/play 21');
  expect(messages()).toContain('Perintah tidak dikenal');
  expect(messages()).toContain('valid');
});
it('duplicate Telegram update cannot double-consume a hint', async () => {
  await send('/play');
  const update = textUpdate(123, '/hint');
  await runtime.bot.handleUpdate(update);
  await runtime.bot.handleUpdate(update);
  expect(engine.progress(1, 1).hints).toBe(4);
});
it('group first answer wins without creating private progress', async () => {
  await send('/group', 1, -100);
  const s = engine.current(-100, 1)!;
  await send(engine.catalog.get(s.question_id).answer, 2, -100);
  expect(engine.player(2).score).toBe(5);
  expect(messages()).toContain('✅');
  await send('/play', 1, -100);
  expect(messages()).toContain('privat');
});
it('non-admin cannot see suggestions or broadcast', async () => {
  await send('/suggest rahasia saya');
  await send('/suggestions');
  await send('/broadcast text');
  expect(messages()).toContain('Khusus admin');
  await send('/suggestions', 99);
  expect(messages()).toContain('rahasia saya');
});
it('export uploads private JSON and no token', async () => {
  await send('/start');
  await send('/export');
  const data = [...mock.files.values()].at(-1)!.toString();
  expect(JSON.parse(data).player.id).toBe(1);
  expect(data).not.toContain('BOT_TOKEN');
});
it('delete confirmation is protected and clears records', async () => {
  await send('/start');
  await send('/delete');
  const kb = mock.calls.at(-1)!.payload.reply_markup as {
    inline_keyboard: { callback_data: string }[][];
  };
  const data = kb.inline_keyboard[0]![0]!.callback_data;
  await cb(data, 2, 1);
  expect(store.player(1)).toBeDefined();
  await cb(data);
  expect(store.player(1)).toBeUndefined();
});
it('admin broadcasts only to opted-in private recipients', async () => {
  await send('/start');
  await send('/start', 2);
  await send('/reminders on');
  await send('/broadcast halo', 99);
  expect(engine.jobs()).toHaveLength(1);
  expect(engine.jobs()[0]?.chat_id).toBe(1);
  await runtime.flushJobs();
  expect(engine.jobs()).toHaveLength(0);
  expect(messages()).toContain('📣');
});
it('static commands, sharing and sticker payloads use local assets', async () => {
  for (const cmd of [
    '/help',
    '/levels',
    '/questions',
    '/status',
    '/privacy',
    '/achievements',
    '/quote',
    '/leaderboard',
  ])
    await send(cmd);
  await send('/play');
  await send('/share');
  await send('/sticker');
  expect(mock.calls.some((c) => c.method === 'sendSticker')).toBe(true);
  expect(mock.calls.filter((c) => c.method === 'sendPhoto')).toHaveLength(2);
});
it('selfie input is opt-in and cancellation works', async () => {
  await send('/selfie');
  expect(engine.player(1).awaiting_photo).toBe(1);
  await send('/cancel');
  expect(engine.player(1).awaiting_photo).toBe(0);
  await send('/selfie 2');
  expect(messages()).toContain('ganjil');
});
it('inline sharing lists levels without disclosing answers', async () => {
  await runtime.bot.handleUpdate({
    update_id: ++n,
    inline_query: {
      id: 'inline',
      from: { id: 1, is_bot: false, first_name: 'Player' },
      query: 'Level 1',
      offset: '',
    },
  });
  const call = mock.calls.at(-1)!;
  expect(call.method).toBe('answerInlineQuery');
  expect(JSON.stringify(call.payload)).not.toContain('jambu batu');
});

it('photo handler downloads via mocked boundary, composes actual frame and rewards once', async () => {
  const photo = await sharp({
    create: { width: 500, height: 500, channels: 3, background: '#246a84' },
  })
    .jpeg()
    .toBuffer();
  class Photos extends Media {
    override async download() {
      return photo;
    }
  }
  runtime.close();
  runtime = createRuntime(engine, cfg, {
    botInfo: DEMO_BOT,
    rateLimit: false,
    media: new Photos(cfg),
  });
  mock = new MockTelegram();
  mock.attach(runtime.bot);
  for (let i = 0; i < 2; i++) {
    await send('/selfie');
    const base = textUpdate(++n, '');
    if (!('message' in base) || !base.message) throw Error('message');
    await runtime.bot.handleUpdate({
      update_id: base.update_id,
      message: {
        ...base.message,
        photo: [
          {
            file_id: 'photo',
            file_unique_id: 'photo',
            width: 500,
            height: 500,
            file_size: photo.length,
          },
        ],
      },
    });
  }
  expect(mock.calls.filter((c) => c.method === 'sendPhoto')).toHaveLength(2);
  expect(engine.progress(1, 1).hints).toBe(7);
  expect(messages()).toContain('sudah diambil');
});
it('wrong reply_to_message cannot solve the current question', async () => {
  await send('/play');
  const base = textUpdate(++n, 'jambu batu');
  if (!('message' in base) || !base.message) throw Error('message');
  await runtime.bot.handleUpdate({
    update_id: base.update_id,
    message: {
      ...base.message,
      reply_to_message: {
        message_id: 99999,
        date: 0,
        chat: { id: 1, type: 'private', first_name: 'Old' },
        text: 'old',
      } as NonNullable<typeof base.message.reply_to_message>,
    },
  });
  expect(engine.progress(1, 1).position).toBe(0);
  expect(messages()).toContain('lama');
});
it('HTTP 429 outbox retries honor retry_after without duplicating rewards', async () => {
  await send('/start');
  engine.queue(1, 1, 'hello', 'retry');
  runtime.bot.api.config.use(async () => ({
    ok: false,
    error_code: 429,
    description: 'Too Many Requests',
    parameters: { retry_after: 60 },
  }));
  await runtime.flushJobs();
  const job = store.get<{ attempts: number; next_at: number }>('SELECT * FROM jobs')!;
  expect(job.attempts).toBe(1);
  expect(job.next_at).toBeGreaterThan(Date.now() + 59000);
});
it('rate limiting rejects rapid duplicate actions before spending hints', async () => {
  runtime.close();
  const limited = { ...cfg, rateLimitMs: 60000 };
  runtime = createRuntime(engine, limited, { botInfo: DEMO_BOT });
  mock = new MockTelegram();
  mock.attach(runtime.bot);
  await send('/play');
  const sid = engine.current(1, 1)!.id;
  await cb(`hint:${sid}`);
  expect(engine.progress(1, 1).hints).toBe(5);
  expect(mock.calls.at(-1)?.payload.text).toContain('cepat');
});
it('graceful close drains pending outbox before database shutdown', async () => {
  await send('/start');
  engine.queue(1, 1, 'pending', 'shutdown');
  let unblock!: () => void;
  const gate = new Promise<void>((resolve) => {
    unblock = resolve;
  });
  runtime.bot.api.config.use(async (prev, method, payload, signal) => {
    await gate;
    return prev(method, payload, signal);
  });
  const flushing = runtime.flushJobs();
  let closed = false;
  const closing = runtime.close().then(() => {
    closed = true;
  });
  expect(closed).toBe(false);
  unblock();
  await Promise.all([flushing, closing]);
  expect(closed).toBe(true);
  expect(store.all('SELECT * FROM jobs')).toHaveLength(0);
});

it('queued batch rechecks deletion/opt-out before sending subsequent users', async () => {
  await send('/start');
  engine.touch(2, 'Second user', 2);
  engine.queue(1, 1, 'first', 'one');
  engine.queue(2, 2, 'must not send', 'two');
  let unblock!: () => void;
  const gate = new Promise<void>((resolve) => {
    unblock = resolve;
  });
  runtime.bot.api.config.use(async (prev, method, payload, signal) => {
    await gate;
    return prev(method, payload, signal);
  });
  const flushing = runtime.flushJobs();
  engine.reminder(2, false);
  unblock();
  await flushing;
  expect(mock.calls.filter((c) => c.payload.text === 'must not send')).toHaveLength(0);
  expect(store.all('SELECT * FROM jobs')).toHaveLength(0);
});
it('group status/achievements/quote/cancel never expose or mutate private state', async () => {
  await send('/selfie');
  const before = engine.player(1).awaiting_photo;
  for (const command of ['/status', '/achievements', '/quote', '/cancel'])
    await send(command, 1, -100);
  expect(engine.player(1).awaiting_photo).toBe(before);
  const publicMessages = mock.calls
    .filter((c) => c.payload.chat_id === -100)
    .map((c) => String(c.payload.text));
  expect(publicMessages.every((t) => t.includes('privat'))).toBe(true);
  await send('/group', 1, -100);
  const keyboard = mock.calls.at(-1)!.payload.reply_markup;
  expect(JSON.stringify(keyboard)).not.toContain('status');
});
it('malformed callback cannot consume current hint without a session nonce', async () => {
  await send('/play');
  for (const data of [
    'hint:',
    'hint',
    'hint:0000000000000000:extra',
    'level:',
    'practice:-1',
    'play:extra',
    'x'.repeat(65),
  ])
    await cb(data);
  expect(engine.progress(1, 1).hints).toBe(5);
  expect(mock.calls.at(-1)?.payload.text).toContain('format');
});
it('callback ACK occurs before photo upload and only once', async () => {
  await send('/start');
  const offset = mock.calls.length;
  await cb('play');
  const calls = mock.calls.slice(offset);
  expect(calls[0]?.method).toBe('answerCallbackQuery');
  expect(calls[1]?.method).toBe('sendPhoto');
  expect(calls.filter((c) => c.method === 'answerCallbackQuery')).toHaveLength(1);
});
it('callback ACK occurs before hint reply and only once', async () => {
  await send('/play');
  const offset = mock.calls.length;
  await cb(`hint:${engine.current(1, 1)!.id}`);
  const calls = mock.calls.slice(offset);
  expect(calls[0]?.method).toBe('answerCallbackQuery');
  expect(calls.filter((c) => c.method === 'answerCallbackQuery')).toHaveLength(1);
});
it('replayed update does not steal the next rate-limit slot', async () => {
  await runtime.close();
  let clock = 5000;
  const limited = { ...cfg, rateLimitMs: 1000 };
  engine = new Engine(store, new Catalog(cfg.assetRoot), limited, () => clock);
  runtime = createRuntime(engine, limited, { botInfo: DEMO_BOT });
  mock = new MockTelegram();
  mock.attach(runtime.bot);
  await send('/start');
  clock = 6000;
  const update = textUpdate(123, '/play');
  await runtime.bot.handleUpdate(update);
  clock = 7000;
  await runtime.bot.handleUpdate(update);
  await runtime.bot.handleUpdate(textUpdate(124, '/hint'));
  expect(engine.progress(1, 1).hints).toBe(4);
});
it('clock rollback does not silence rate-limited users until wall time catches up', async () => {
  await runtime.close();
  let clock = 5000;
  const limited = { ...cfg, rateLimitMs: 1000 };
  engine = new Engine(store, new Catalog(cfg.assetRoot), limited, () => clock);
  runtime = createRuntime(engine, limited, { botInfo: DEMO_BOT });
  mock = new MockTelegram();
  mock.attach(runtime.bot);
  await send('/start');
  clock = 4000;
  await send('/play');
  expect(engine.current(1, 1)).toBeDefined();
});
it('runtime cannot restart scheduler or flush jobs after close', async () => {
  await send('/start');
  await runtime.close();
  engine.queue(1, 1, 'do not send', 'closed');
  await runtime.flushJobs();
  expect(engine.jobs()).toHaveLength(1);
  expect(() => runtime.startScheduler()).toThrow('closed');
});
it('anonymous bot identities are not turned into personal player records', async () => {
  const update = textUpdate(++n, '/group', 123, -100);
  if (!('message' in update) || !update.message?.from) throw Error('fixture');
  update.message.from.is_bot = true;
  await runtime.bot.handleUpdate(update);
  expect(store.player(123)).toBeUndefined();
  expect(mock.calls).toHaveLength(0);
});

it('scheduler start is idempotent and close removes its interval', async () => {
  vi.useFakeTimers();
  try {
    const initial = vi.getTimerCount();
    runtime.startScheduler();
    runtime.startScheduler();
    expect(vi.getTimerCount()).toBe(initial + 1);
    await runtime.close();
    expect(vi.getTimerCount()).toBe(initial);
  } finally {
    vi.useRealTimers();
  }
});
it('shutdown aborts a stalled outbox after 25s and retains the pending job', async () => {
  await send('/start');
  engine.queue(1, 1, 'stalled', 'abort');
  runtime.bot.api.config.use(
    async (_prev, _method, _payload, signal) =>
      new Promise<never>((_resolve, reject) => {
        if (!signal) throw Error('Missing abort signal');
        signal.addEventListener('abort', () => reject(Error('Aborted')), { once: true });
      }),
  );
  vi.useFakeTimers();
  try {
    const flushing = runtime.flushJobs();
    const closing = runtime.close();
    await vi.advanceTimersByTimeAsync(25000);
    await Promise.all([flushing, closing]);
    expect(store.all('SELECT * FROM jobs')).toHaveLength(1);
    expect(store.get<{ attempts: number }>('SELECT attempts FROM jobs')?.attempts).toBe(0);
  } finally {
    vi.useRealTimers();
  }
});
it('runtime close cancels ordinary API requests using a shared abort signal', async () => {
  await runtime.close();
  let aborted = false;
  runtime = createRuntime(engine, cfg, {
    botInfo: DEMO_BOT,
    apiTransformer: async (_prev, _method, _payload, signal) =>
      new Promise<never>((_resolve, reject) => {
        if (!signal) throw Error('Missing lifecycle signal');
        signal.addEventListener('abort', () => reject(Error('Cancelled')), { once: true });
      }),
  });
  const pending = runtime.bot.api.sendMessage(1, 'fixture').catch(() => {
    aborted = true;
  });
  await runtime.close();
  await pending;
  expect(aborted).toBe(true);
  expect(runtime.signal.aborted).toBe(true);
});

it('HTTP failures do not enter the auto-retry plugin infinite networking loop', async () => {
  await runtime.close();
  let attempts = 0;
  runtime = createRuntime(engine, cfg, {
    apiTransformer: async () => {
      attempts++;
      throw new HttpError('Fixture network error', Error('Fixture'));
    },
  });
  await expect(runtime.bot.api.sendMessage(1, 'fixture')).rejects.toBeInstanceOf(HttpError);
  expect(attempts).toBe(1);
});
