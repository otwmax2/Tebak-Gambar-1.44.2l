/** Manual integration test: requires npm run demo. Never calls the Telegram API. */
import assert from 'node:assert/strict';
import fs from 'node:fs';
import path from 'node:path';
import { BOT_ROOT } from '../src/config.js';
const base = process.env.DEMO_BASE_URL ?? 'http://127.0.0.1:3000';
interface Event {
  method: string;
  text: string;
  upload: string | null;
  buttons: { callback_data?: string; text: string }[][];
}
interface Output {
  events: Event[];
  mode: string;
  player: { score: number } | null;
}
let cookie = '';
async function post(route: string, input: object): Promise<Output> {
  const r = await fetch(base + route, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json', Cookie: cookie },
    body: JSON.stringify(input),
  });
  assert.equal(r.status, 200);
  cookie = r.headers.get('set-cookie')?.split(';')[0] ?? cookie;
  return (await r.json()) as Output;
}
const send = (text: string, group = false) => post('/api/message', { text, group });
const callback = (data: string) => post('/api/callback', { data });
async function media(url: string, expected: string) {
  const r = await fetch(base + url, { headers: { Cookie: cookie } });
  assert.equal(r.status, 200);
  assert.ok(
    r.headers.get('content-type')?.includes(expected),
    `Expected ${expected}; got ${r.headers.get('content-type')}`,
  );
  assert.ok((await r.arrayBuffer()).byteLength > 100);
  assert.equal((await fetch(base + url)).status, 404);
}
async function main() {
  const invalidOrigin = await fetch(base + '/api/message', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json', Origin: 'https://untrusted.invalid' },
    body: JSON.stringify({ text: '/start' }),
  });
  assert.equal(invalidOrigin.status, 403);
  assert.equal(invalidOrigin.headers.get('set-cookie'), null);
  assert.equal(
    (
      await fetch(base + '/api/message', {
        method: 'POST',
        headers: { 'Content-Type': 'text/plain' },
        body: '{}',
      })
    ).status,
    415,
  );
  assert.equal(
    (
      await fetch(base + '/api/message', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ text: 123 }),
      })
    ).status,
    400,
  );
  assert.equal(
    (
      await fetch(base + '/api/photo', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ photo: 'data:image/svg+xml;base64,PHN2Zy8+' }),
      })
    ).status,
    400,
  );
  const partitioned = await fetch(base + '/api/message', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json', 'X-Forwarded-Proto': 'https' },
    body: JSON.stringify({ text: '/start' }),
  });
  assert.ok(partitioned.headers.get('set-cookie')?.includes('Partitioned'));
  assert.ok(partitioned.headers.get('set-cookie')?.includes('Secure'));

  const health = (await (await fetch(base + '/health')).json()) as { telegramNetwork: boolean };
  assert.equal(health.telegramNetwork, false);
  assert.equal((await send('/start')).mode, 'offline-demo');
  const play = await send('/play'),
    first = play.events.find((e) => e.method === 'sendPhoto')!;
  await media(first.upload!, 'image/png');
  await callback(first.buttons[0]![0]!.callback_data!);
  assert.equal((await send('jambu batu')).player?.score, 10);
  await send('/play');
  const sticker = await send('/sticker');
  await media(sticker.events[0]!.upload!, 'image/webp');
  const sound = await send('/sound sound_benar');
  await media(sound.events[0]!.upload!, 'audio/ogg');
  await send('/selfie');
  const photo = fs.readFileSync(
    path.join(BOT_ROOT, '../audit/decrypted-levels/images/level-01/question-000.png'),
  );
  const framed = await post('/api/photo', {
    photo: 'data:image/png;base64,' + photo.toString('base64'),
  });
  await media(framed.events.find((e) => e.method === 'sendPhoto')!.upload!, 'image/jpeg');
  const exported = await send('/export');
  await media(exported.events[0]!.upload!, 'application/json');
  const group = await send('/group', true),
    qid = Number(/Soal #(\d+)/.exec(group.events[0]!.text)![1]) - 1;
  const catalog = JSON.parse(fs.readFileSync(path.join(BOT_ROOT, 'data/catalog.json'), 'utf8')) as {
    questions: { id: number; answer: string }[];
  };
  assert.equal(
    (await send(catalog.questions.find((q) => q.id === qid)!.answer, true)).player?.score,
    15,
  );
  const deletion = await send('/delete');
  assert.equal((await callback(deletion.events[0]!.buttons[0]![0]!.callback_data!)).player, null);
  assert.equal((await send('/start')).player?.score, 0);
  console.log(
    'PASS live HTTP simulator: onboarding, callback/hint, PNG, answer, WebP, Ogg, selfie framing, export, group winner, delete/recreate and cross-cookie media isolation, cross-origin/content-type rejection and HTTPS partitioned cookies. NO Telegram network.',
  );
}
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
