import { expect, it } from 'vitest';
import { Engine } from '../src/engine.js';
import { Store } from '../src/store.js';
import { Catalog } from '../src/catalog.js';
import { readConfig } from '../src/config.js';
import { createRuntime } from '../src/bot.js';
import { DEMO_BOT, MockTelegram, textUpdate } from '../src/mock-telegram.js';
const config = readConfig({ DATABASE_PATH: ':memory:', RATE_LIMIT_MS: '0' });
it('sound command makes all 11 Ogg files available without arbitrary path access', async () => {
  const store = new Store(':memory:');
  const engine = new Engine(store, new Catalog(config.assetRoot), config),
    runtime = createRuntime(engine, config, { botInfo: DEMO_BOT, rateLimit: false }),
    mock = new MockTelegram();
  mock.attach(runtime.bot);
  await runtime.bot.handleUpdate(textUpdate(1, '/sound'));
  const list = String(mock.calls[0]!.payload.text);
  expect(list.split('\n').filter((s) => s.startsWith('/sound'))).toHaveLength(11);
  await runtime.bot.handleUpdate(textUpdate(2, '/sound sound_benar'));
  expect(mock.calls.at(-1)?.method).toBe('sendDocument');
  await runtime.bot.handleUpdate(textUpdate(3, '/sound ../secret'));
  expect(mock.calls.at(-1)?.payload.text).toContain('tidak ditemukan');
  store.close();
});
it('suggestion quota limits storage abuse without dropping existing ideas', () => {
  const store = new Store(':memory:');
  const engine = new Engine(store, new Catalog(config.assetRoot), config);
  engine.touch(1, 'User');
  for (let i = 0; i < 5; i++) engine.suggest(1, 'idea ' + i);
  expect(() => engine.suggest(1, 'six')).toThrow('5 ide');
  expect(store.get<{ n: number }>('SELECT COUNT(*) n FROM suggestions')?.n).toBe(5);
  store.close();
});

it('paid hint positions persist across normal stop/restart and clear after success', () => {
  const store = new Store(':memory:');
  const c = { ...config, shuffle: false };
  const engine = new Engine(store, new Catalog(c.assetRoot), c);
  engine.touch(1, 'User');
  const first = engine.start(1, 1);
  engine.hint(first.id, 1, 1);
  const revealed = store.session(first.id)!.revealed;
  engine.stop(first.id, 1, 1);
  const resumed = engine.start(1, 1);
  expect(resumed.revealed).toBe(revealed);
  engine.answer(resumed.id, 1, 1, engine.catalog.get(resumed.question_id).answer);
  expect(store.all('SELECT * FROM hints_state')).toHaveLength(0);
  store.close();
});
