import { Bot, Context, InlineKeyboard, InputFile, GrammyError } from 'grammy';
import { randomBytes } from 'node:crypto';
import { autoRetry } from '@grammyjs/auto-retry';
import fs from 'node:fs';
import path from 'node:path';
import { BOT_ROOT } from './config.js';
import type { UserFromGetMe } from 'grammy/types';
import { Engine, GameError } from './engine.js';
import type { Config } from './config.js';
import type { Session } from './store.js';
import { Media } from './media.js';
export const COMMANDS = [
  ['start','Menu dan onboarding'], ['play','Lanjutkan permainan'], ['levels','Pilih level'], ['questions','Daftar soal terbuka'],
  ['hint','Buka satu huruf'], ['freeanswer','Gunakan jawaban gratis'], ['status','Nyawa, hint dan progres'], ['daily','Hadiah harian'],
  ['challenge','Tantangan harian'], ['practice','Latihan'], ['group','Kuis grup'], ['stop','Hentikan soal'],
  ['leaderboard','Papan skor'], ['achievements','Pencapaian'], ['quote','Motivasi level'], ['selfie','Frame foto dan hint'],
  ['sticker','Stiker gambar soal'], ['share','Bagikan soal'], ['suggest','Kirim ide'], ['reminders','Pengingat opt-in'],
  ['sound','Suara game sebagai file'], ['export','Ekspor data pribadi'], ['delete','Hapus data pribadi'], ['help','Aturan'], ['privacy','Privasi'],
] as const;
const HELP = `🎮 Tebak Gambar · 400 soal / 20 level\n\n/play [level] — mulai/lanjut; /next — berikutnya\n/levels /questions — navigasi\nKetik jawaban tanpa /. Spasi/kapital diabaikan. Typo 1–2 karakter: hampir benar, tanpa penalti.\n/hint — satu huruf; /freeanswer — pakai saldo (soal biasa saja)\n/status — nyawa/hint/progres\n/daily — hadiah sekali per hari UTC\n/challenge — soal harian, tanpa mengubah progres\n/practice [nomor 1–400] — latihan soal terbuka, tanpa nyawa/skor\n/group — kuis grup, jawaban benar pertama menang\n/stop — keluar; meninggalkan raja mengurangi nyawa\n/selfie [level ganjil] — foto berframe, +2 hint sekali sehari\n/sticker /share /sound [nama] /quote /achievements /leaderboard\n/suggest ide — inbox pengelola bot\n/reminders on|off — pengingat, default OFF\n/export /delete /privacy — data pribadi\n\nRaja default 60 detik, tanpa hint/free answer. Level 11+ mempunyai checkpoint pada soal ke-10. Nyawa habis: kembali ke checkpoint. Skor progres yang sama tidak bisa difarm.\nTidak ada iklan/Firebase/OAuth/API game lama. Metadata level 21–64 tidak memiliki soal lokal.\nAdmin privat: /admin /suggestions /broadcast teks (opt-in).`;
export interface BotOptions { botInfo?: UserFromGetMe; media?: Media; rateLimit?: boolean }
export interface Runtime { bot: Bot; flushJobs: () => Promise<void>; startScheduler: () => void; close: () => Promise<void> }
export function createRuntime(engine: Engine, config: Config, options: BotOptions = {}): Runtime {
  const bot = new Bot(config.token || '123456:OFFLINE_DEMO_ONLY', options.botInfo ? {botInfo: options.botInfo} : {});
  if (!options.botInfo) bot.api.config.use(autoRetry({maxRetryAttempts: 3, maxDelaySeconds: 60}));
  const media = options.media ?? new Media(config), rate = new Map<string, number>();
  const confirms = new Map<number, {nonce: string; expires: number}>(); let scheduler: NodeJS.Timeout | undefined;
  bot.use(async (ctx, next) => {
    if (ctx.from && ctx.chat) {
      const key = `${ctx.chat.id}:${ctx.from.id}`, last = rate.get(key) ?? -Infinity;
      if (options.rateLimit !== false && engine.now() - last < config.rateLimitMs) { if (ctx.callbackQuery) await ctx.answerCallbackQuery({text: 'Sebentar, jangan terlalu cepat.'}); return; }
      rate.set(key, engine.now()); if (rate.size > 10000) for (const [k, t] of rate) if (engine.now() - t > 60000) rate.delete(k);
      if (!engine.store.run('INSERT OR IGNORE INTO updates(id,created_at) VALUES(?,?)', ctx.update.update_id, engine.now())) { if (ctx.callbackQuery) await ctx.answerCallbackQuery(); return; }
      engine.touch(ctx.from.id, [ctx.from.first_name, ctx.from.last_name].filter(Boolean).join(' '), ctx.chat.type === 'private' ? ctx.chat.id : undefined);
    }
    try { await next(); }
    catch (e) { if (e instanceof GameError) { if (ctx.callbackQuery) await ctx.answerCallbackQuery({text: e.message.slice(0, 190)}); else await ctx.reply(e.message); } else throw e; }
  });
  const uid = (ctx: Context): number => { if (!ctx.from) throw new GameError('Identitas tidak tersedia.'); return ctx.from.id; };
  const privateOnly = (ctx: Context): void => { if (!ctx.chat || ctx.chat.type !== 'private') throw new GameError('Fitur ini untuk chat privat bot; di grup gunakan /group.'); };
  const admin = (ctx: Context): void => { privateOnly(ctx); if (!config.admins.has(uid(ctx))) throw new GameError('Khusus admin bot.'); };
  const active = (ctx: Context, sid?: string): Session => {
    if (!ctx.chat) throw new GameError('Chat tidak tersedia.');
    const s = sid ? engine.active(sid, uid(ctx), ctx.chat.id) : engine.current(ctx.chat.id, uid(ctx));
    if (!s) throw new GameError('Belum ada soal aktif. Gunakan /play atau /group.'); return s;
  };
  async function question(ctx: Context, s: Session): Promise<void> {
    const q = engine.catalog.get(s.question_id), kb = new InlineKeyboard();
    if (s.mode === 'progress' && q.type === 'biasa') kb.text('💡 Hint', `hint:${s.id}`).text('🎁 Free answer', `free:${s.id}`).row();
    kb.text('📊 Status', 'status').text('⏹ Stop', `stop:${s.id}`);
    const hint = s.mode === 'progress' && s.revealed !== '[]' ? `\n💡 ${engine.hintText(s)}` : '';
    const caption = `🖼 Soal #${q.id + 1} · Level ${q.level} · ${q.type === 'raja' ? '👑 Raja' : 'Biasa'}\nMode: ${s.mode}${s.mode === 'progress' ? ` · Urutan ${s.position + 1}/20` : ''}${s.deadline ? `\n⏱ ${Math.max(0, Math.ceil((s.deadline - engine.now()) / 1000))} detik tersisa` : ''}${hint}\nKetik jawaban atau balas gambar ini.`;
    const sent = await ctx.replyWithPhoto(new InputFile(engine.catalog.imagePath(q.id), `question-${q.id}.png`), {caption, reply_markup: kb});
    engine.setMessage(s.id, sent.message_id);
  }
  async function play(ctx: Context, level?: number): Promise<void> { privateOnly(ctx); await question(ctx, engine.start(ctx.chat!.id, uid(ctx), 'progress', level)); }
  async function status(ctx: Context): Promise<void> {
    const p = engine.player(uid(ctx)), progress = engine.progress(p.id, p.selected);
    await ctx.reply(`📊 ${p.name}\n❤️ ${p.lives}/${config.maxLives}${p.lives < config.maxLives ? ` · +1 dalam ${Math.ceil(engine.remainingLife(p.id) / 1000)} detik` : ''}\n💡 ${progress.hints} hint (level ${p.selected}) · 🎁 ${p.free_answers} free answer\n📍 ${progress.position}/20 · checkpoint ${progress.checkpoint}\n🔓 Level 1–${p.unlocked}/20 · 🏆 ${p.score} poin\n🔔 Pengingat: ${p.reminders ? 'aktif' : 'nonaktif'}`);
  }
  async function levels(ctx: Context): Promise<void> {
    privateOnly(ctx); const p = engine.player(uid(ctx)), kb = new InlineKeyboard();
    for (let l = 1; l <= 20; l++) { kb.text(`${l <= p.unlocked ? '🔓' : '🔒'} ${l}`, `level:${l}`); if (l % 4 === 0) kb.row(); }
    await ctx.reply('Pilih level. Pembukaan mengikuti progres.', {reply_markup: kb});
  }
  async function result(ctx: Context, r: ReturnType<Engine['answer']>): Promise<void> {
    if (r.kind === 'near') { await ctx.reply('🟡 Hampir benar! Periksa ejaan. Nyawa tidak berkurang.'); return; }
    if (r.kind === 'wrong') { await ctx.reply(`❌ Belum tepat. ❤️ ${r.lives}/${config.maxLives}${r.lives === 0 ? '\nNyawa habis; kembali ke checkpoint. Tunggu refill.' : '\nCoba lagi.'}`); return; }
    if (r.kind === 'timeout') { await ctx.reply('⏰ Waktu habis. Gunakan /play untuk mencoba lagi.'); return; }
    const suffix = r.completed ? `\n🎉 Level selesai! ${r.question.level < 20 ? `Level ${r.nextLevel} terbuka.` : 'Seluruh 400 soal tamat!'}\n${engine.catalog.levels[r.question.level - 1]!.quote}` : r.checkpoint ? '\n🚩 Checkpoint tersimpan.' : '';
    const kb = new InlineKeyboard(); if (r.session.mode === 'progress' && !(r.completed && r.question.level === 20)) kb.text('▶️ Lanjut', `next:${r.session.id}`);
    await ctx.reply(`✅ ${r.answer}\n+${r.points} poin${suffix}`, {reply_markup: kb});
  }
  async function daily(ctx: Context): Promise<void> { privateOnly(ctx); const r = engine.claimDaily(uid(ctx)); await ctx.reply(`🎁 +${r.hints} hint level ${r.level}, +${r.answers} free answer (saldo max 3). Hadiah berikutnya setelah 00:00 UTC.`); }
  bot.command('start', async ctx => {
    if (ctx.chat.type !== 'private') { await ctx.reply('Gunakan /group untuk kuis bersama, atau chat privat bot untuk progres pribadi.'); return; }
    const arg = ctx.match.trim(); if (/^level_\d+$/.test(arg)) { await play(ctx, Number(arg.slice(6))); return; }
    if (/^q_\d+$/.test(arg)) { await question(ctx, engine.start(ctx.chat.id, uid(ctx), 'practice', Number(arg.slice(2)))); return; }
    await ctx.reply('🎮 Selamat datang! 400 soal · 20 level · progres otomatis dengan akun Telegram.\nKetuk Mulai atau baca /help. /privacy menjelaskan data yang disimpan.', {reply_markup: new InlineKeyboard().text('▶️ Mulai', 'play').text('🔢 Level', 'levels').row().text('📖 Cara main', 'help').text('🎁 Harian', 'daily')});
  });
  bot.command(['help', 'howto'], ctx => ctx.reply(HELP));
  bot.command(['play', 'next'], ctx => play(ctx, ctx.match.trim() ? Number(ctx.match) : undefined));
  bot.command(['levels', 'level'], ctx => levels(ctx)); bot.command('status', ctx => status(ctx));
  bot.command('questions', async ctx => {
    privateOnly(ctx); const p = engine.player(uid(ctx)), progress = engine.progress(p.id, p.selected), kb = new InlineKeyboard();
    (JSON.parse(progress.order_json) as number[]).forEach((qid, pos) => { kb.text(`${pos < progress.position ? '✅' : pos === progress.position ? '▶️' : '🔒'} ${pos + 1}`, `practice:${qid}`); if (pos % 4 === 3) kb.row(); });
    await ctx.reply(`Soal level ${p.selected}. Tombol mengikuti urutan permainan; soal di depan progres terkunci.`, {reply_markup: kb});
  });
  bot.command('hint', async ctx => { privateOnly(ctx); await ctx.reply(engine.hint(active(ctx).id, uid(ctx), ctx.chat.id)); });
  bot.command('freeanswer', async ctx => { privateOnly(ctx); await result(ctx, engine.answer(active(ctx).id, uid(ctx), ctx.chat.id, '', undefined, true)); });
  bot.command('daily', ctx => daily(ctx));
  bot.command('challenge', async ctx => { privateOnly(ctx); await question(ctx, engine.start(ctx.chat.id, uid(ctx), 'daily')); });
  bot.command('practice', async ctx => { privateOnly(ctx); await question(ctx, engine.start(ctx.chat.id, uid(ctx), 'practice', ctx.match.trim() ? Number(ctx.match) - 1 : undefined)); });
  bot.command('group', async ctx => { if (ctx.chat.type === 'private') throw new GameError('/group digunakan di grup.'); await question(ctx, engine.start(ctx.chat.id, uid(ctx), 'group')); });
  async function stop(ctx: Context, sid?: string): Promise<void> {
    const s = active(ctx, sid); let moderator = false;
    if (s.user_id === 0 && s.initiator !== uid(ctx)) { const m = await ctx.api.getChatMember(s.chat_id, uid(ctx)); moderator = ['creator', 'administrator'].includes(m.status); }
    engine.stop(s.id, uid(ctx), ctx.chat!.id, moderator); await ctx.reply('Soal dihentikan. /play atau /group untuk kembali.');
  }
  bot.command('stop', ctx => stop(ctx));
  bot.command('leaderboard', ctx => ctx.reply(`🏆 Papan skor\n${engine.leaderboard().map((r, i) => `${i + 1}. ${r.name} — ${r.score}`).join('\n')}\nLatihan tidak memberi poin; progres soal yang sama dinilai sekali.`));
  bot.command('achievements', async ctx => {
    const total = engine.store.get<{n: number}>('SELECT COUNT(*) n FROM solves WHERE user_id=?', uid(ctx))!.n, p = engine.player(uid(ctx));
    await ctx.reply(`🏅 Pencapaian\n${total >= 1 ? '✅' : '⬜'} Jawaban pertama\n${total >= 20 ? '✅' : '⬜'} 20 soal\n${p.unlocked >= 11 ? '✅' : '⬜'} Membuka checkpoint\n${total === 400 ? '✅' : '⬜'} Master 400\nSoal unik selesai: ${total}/400`);
  });
  bot.command('quote', ctx => ctx.reply(engine.catalog.levels[engine.player(uid(ctx)).selected - 1]!.quote));
  bot.command('share', async ctx => { const q = engine.catalog.get(active(ctx).question_id); await ctx.replyWithPhoto(new InputFile(engine.catalog.imagePath(q.id)), {caption: `Tebak gambar ini! #${q.id + 1} · Level ${q.level}\nhttps://t.me/${ctx.me.username}?start=q_${q.id}\nLatihan memerlukan soal yang sudah terbuka.`}); });
  bot.command('sound', async ctx => { privateOnly(ctx); const root=path.join(BOT_ROOT,'../resources/res/raw'); const sounds=fs.readdirSync(root).filter(name=>name.endsWith('.ogg')); const requested=ctx.match.trim(); if(!requested){await ctx.reply('Suara tersedia (file Ogg):\n'+sounds.map(name=>'/sound '+name.replace('.ogg','')).join('\n'));return;} const filename=requested.endsWith('.ogg')?requested:requested+'.ogg';if(!sounds.includes(filename))throw new GameError('Suara tidak ditemukan. Gunakan /sound.');await ctx.replyWithDocument(new InputFile(path.join(root,filename)),{caption:'Audio asli game (Ogg), dikirim sebagai file; playback tergantung klien Telegram.'}); });
  bot.command('sticker', async ctx => { privateOnly(ctx); await ctx.replyWithSticker(new InputFile(await media.sticker(engine.catalog.imagePath(active(ctx).question_id)), 'tebak-gambar.webp')); });
  bot.command(['selfie', 'frame'], async ctx => {
    privateOnly(ctx); const p = engine.player(uid(ctx)), level = ctx.match.trim() ? Number(ctx.match) : p.selected % 2 ? p.selected : p.selected - 1;
    if (!Number.isInteger(level) || level < 1 || level > 19 || level % 2 !== 1 || level > p.unlocked) throw new GameError('Pilih frame level ganjil terbuka (1–19).');
    engine.requestPhoto(uid(ctx), level); await ctx.reply(`Kirim photo Telegram untuk frame level ${level}. Diproses di memori; +2 hint sekali sehari UTC. /cancel untuk batal.`);
  });
  bot.command('cancel', async ctx => { engine.store.run('UPDATE players SET awaiting_photo=0 WHERE id=?', uid(ctx)); await ctx.reply('Input foto dibatalkan.'); });
  bot.on('message:photo', async ctx => {
    privateOnly(ctx); const p = engine.player(uid(ctx)); if (!p.awaiting_photo) { await ctx.reply('Gunakan /selfie dahulu.'); return; }
    const photo = ctx.message.photo.at(-1)!; if (photo.file_size && photo.file_size > config.photoMaxBytes) throw new GameError('Foto terlalu besar.');
    const file = await ctx.api.getFile(photo.file_id); if (!file.file_path) throw new GameError('Foto belum dapat diunduh.');
    const bytes = await media.frame(await media.download(file.file_path), p.awaiting_photo);
    await ctx.replyWithPhoto(new InputFile(bytes, 'selfie-frame.jpg'), {caption: 'Selfie Tebak Gambar — simpan atau bagikan.'});
    await ctx.reply(engine.photoReward(uid(ctx)) ? '💡 Bonus selfie +2 hint.' : 'Frame selesai; bonus hari ini sudah diambil.');
  });
  bot.command(['suggest', 'feedback'], async ctx => { privateOnly(ctx); engine.suggest(uid(ctx), ctx.match); await ctx.reply('Ide tersimpan di inbox admin bot, bukan API lama.'); });
  bot.command('reminders', async ctx => { privateOnly(ctx); const value = ctx.match.trim(); if (!['on', 'off'].includes(value)) throw new GameError('/reminders on atau /reminders off.'); engine.reminder(uid(ctx), value === 'on'); await ctx.reply(`Pengingat ${value}. Opt-in juga untuk pengumuman admin.`); });
  bot.command('privacy', ctx => ctx.reply('Bot menyimpan ID/nama Telegram, progres, nyawa, skor, hint, hadiah, pengingat dan ide di SQLite pengelola. Foto selfie hanya diproses di memori; Telegram tetap memproses media. Tidak ada Firebase, analytics, iklan atau OAuth. Pengingat default OFF. /export untuk unduh data; /delete untuk hapus data bot (bukan riwayat pesan Telegram). Papan skor menampilkan nama dan skor.'));
  bot.command('export', async ctx => { privateOnly(ctx); await ctx.replyWithDocument(new InputFile(Buffer.from(JSON.stringify(engine.export(uid(ctx)), null, 2)), 'tebak-gambar-data.json'), {caption: 'Data akunmu, tanpa token/data akun lain.'}); });
  bot.command(['delete', 'reset'], async ctx => { privateOnly(ctx); const nonce = randomBytes(8).toString('hex'); confirms.set(uid(ctx), {nonce, expires: engine.now() + 60000}); await ctx.reply('Hapus seluruh data bot milikmu? Konfirmasi berlaku 60 detik.', {reply_markup: new InlineKeyboard().text('Hapus', `delete:${nonce}`).text('Batal', 'keep')}); });
  bot.command('admin', async ctx => { admin(ctx); const n = engine.store.get<{n: number}>('SELECT COUNT(*) n FROM players')!.n; await ctx.reply(`Admin: ${n} pemain\n/suggestions — 10 ide terakhir\n/broadcast teks — hanya opt-in`); });
  bot.command('suggestions', async ctx => { admin(ctx); const rows = engine.store.all<{id: number; user_id: number; body: string}>('SELECT id,user_id,body FROM suggestions ORDER BY id DESC LIMIT 10'); for (const r of rows) await ctx.reply(`#${r.id} dari ${r.user_id}\n${r.body}`); if (!rows.length) await ctx.reply('Inbox kosong.'); });
  bot.command('broadcast', async ctx => { admin(ctx); if (!ctx.match.trim() || ctx.match.length > 3000) throw new GameError('/broadcast teks (maksimum 3000 karakter).'); const rows = engine.store.all<{id: number; private_chat: number}>('SELECT id,private_chat FROM players WHERE reminders=1 AND private_chat IS NOT NULL'), key = randomBytes(8).toString('hex'); for (const p of rows) engine.queue(p.id, p.private_chat, `📣 Pengumuman\n${ctx.match}`, `broadcast:${key}:${p.id}`); await ctx.reply(`${rows.length} pengumuman masuk antrean opt-in.`); });
  bot.on('callback_query:data', async ctx => {
    if (!ctx.chat) { await ctx.answerCallbackQuery({text: 'Buka chat bot.'}); return; }
    const [action, value] = ctx.callbackQuery.data.split(':');
    if (action === 'delete') { privateOnly(ctx); const c = confirms.get(uid(ctx)); if (!c || c.nonce !== value || c.expires < engine.now()) throw new GameError('Konfirmasi kedaluwarsa atau bukan milikmu.'); confirms.delete(uid(ctx)); engine.delete(uid(ctx)); await ctx.answerCallbackQuery({text: 'Data dihapus.'}); await ctx.reply('Data bot dihapus. /start untuk akun baru.'); return; }
    if (action === 'keep') { confirms.delete(uid(ctx)); await ctx.answerCallbackQuery({text: 'Batal.'}); return; }
    if (['hint', 'free', 'stop'].includes(action ?? '')) {
      const s = active(ctx, value);
      if (action === 'hint') { privateOnly(ctx); await ctx.reply(engine.hint(s.id, uid(ctx), ctx.chat.id)); }
      if (action === 'free') { privateOnly(ctx); await result(ctx, engine.answer(s.id, uid(ctx), ctx.chat.id, '', undefined, true)); }
      if (action === 'stop') await stop(ctx, value);
    } else if (action === 'next') { const prev = value ? engine.store.session(value) : undefined; if (!prev || prev.active || prev.user_id !== uid(ctx) || prev.chat_id !== ctx.chat.id) throw new GameError('Tombol lanjut tidak valid.'); await play(ctx); }
    else if (action === 'level') await play(ctx, Number(value));
    else if (action === 'practice') { privateOnly(ctx); await question(ctx, engine.start(ctx.chat.id, uid(ctx), 'practice', Number(value))); }
    else if (action === 'play') await play(ctx);
    else if (action === 'levels') await levels(ctx);
    else if (action === 'help') await ctx.reply(HELP);
    else if (action === 'daily') await daily(ctx);
    else if (action === 'status') await status(ctx);
    else throw new GameError('Tombol tidak dikenal.');
    await ctx.answerCallbackQuery();
  });
  bot.on('inline_query', async ctx => { const text = ctx.inlineQuery.query.trim().toLowerCase(); await ctx.answerInlineQuery(engine.catalog.levels.filter(l => `${l.id} ${l.title}`.toLowerCase().includes(text)).slice(0, 10).map(l => ({type: 'article' as const, id: String(l.id), title: `Tebak Gambar ${l.title}`, input_message_content: {message_text: `Main ${l.title}: https://t.me/${ctx.me.username}?start=level_${l.id}`}})), {cache_time: 300}); });
  bot.on('message:text', async ctx => {
    if (ctx.message.text.startsWith('/')) { await ctx.reply('Perintah tidak dikenal. Lihat /help.'); return; }
    const s = engine.current(ctx.chat.id, uid(ctx)); if (!s) { if (ctx.chat.type === 'private') await ctx.reply('Gunakan /play.'); return; }
    await result(ctx, engine.answer(s.id, uid(ctx), ctx.chat.id, ctx.message.text, ctx.message.reply_to_message?.message_id));
  });
  bot.catch(async err => { console.error(JSON.stringify({event:'handler-error', update:err.ctx.update.update_id, type:err.error instanceof Error ? err.error.name : 'unknown'})); try { if(err.ctx.callbackQuery)await err.ctx.answerCallbackQuery({text:'Proses gagal; periksa /status atau /play.'}); else if(err.ctx.chat)await err.ctx.reply('Maaf, proses belum selesai. Periksa /status atau lanjutkan dengan /play.'); } catch { /* blocked/unavailable chat: no payload/token logging */ } });
  let flushing = false, idle = Promise.resolve(); let releaseIdle: (() => void) | undefined;
  async function flushJobs(): Promise<void> {
    if (flushing) return; flushing = true; idle = new Promise<void>(resolve => { releaseIdle = resolve; });
    try { engine.tick(); for (const job of engine.jobs()) { if (!engine.store.get('SELECT id FROM jobs WHERE id=?', job.id)) continue; try { await bot.api.sendMessage(job.chat_id, job.body); engine.jobDone(job.id); } catch (e) { const f = e instanceof GrammyError ? e : undefined; engine.jobFailed(job, f?.error_code === 403 || f?.error_code === 400, f?.parameters.retry_after); } } }
    finally { flushing = false; releaseIdle?.(); }
  }
  return {bot, flushJobs, startScheduler: () => { scheduler = setInterval(() => void flushJobs().catch(() => console.error('{"event":"scheduler-error"}')), config.reminderMs); scheduler.unref(); }, close: async () => { if (scheduler) clearInterval(scheduler); await idle; }};
}
