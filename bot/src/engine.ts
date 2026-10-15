import { randomBytes, randomInt } from 'node:crypto';
import { Catalog, type Question } from './catalog.js';
import type { Config } from './config.js';
import { Store, type Player, type Progress, type Session, type Mode, type Job } from './store.js';
export class GameError extends Error {}
export const dayUTC = (time: number): string => new Date(time).toISOString().slice(0, 10);
export function normalize(text: string): string {
  return text.normalize('NFKC').toLocaleLowerCase('id').replace(/\s+/gu, '');
}
export function distance(a: string, b: string): number {
  const x = [...normalize(a)],
    y = [...normalize(b)];
  let row = y.map((_, i) => i + 1);
  row.unshift(0);
  for (let i = 1; i <= x.length; i++) {
    let diagonal = row[0]!;
    row[0] = i;
    for (let j = 1; j <= y.length; j++) {
      const previous = row[j]!;
      row[j] = Math.min(row[j]! + 1, row[j - 1]! + 1, diagonal + (x[i - 1] === y[j - 1] ? 0 : 1));
      diagonal = previous;
    }
  }
  return row[y.length]!;
}
export interface AnswerResult {
  kind: 'correct' | 'near' | 'wrong' | 'timeout';
  answer?: string;
  points?: number;
  nextLevel?: number;
  checkpoint?: boolean;
  lives: number;
  completed?: boolean;
  question: Question;
  session: Session;
}
export class Engine {
  constructor(
    readonly store: Store,
    readonly catalog: Catalog,
    readonly config: Config,
    readonly now: () => number = Date.now,
  ) {}
  touch(id: number, name: string, privateChat?: number): Player {
    if (!Number.isSafeInteger(id) || id <= 0)
      throw new GameError('Identitas Telegram tidak valid.');
    this.store.run(
      'INSERT OR IGNORE INTO players(id,name,lives,lives_at,created_at) VALUES(?,?,?,?,?)',
      id,
      name.slice(0, 100),
      this.config.maxLives,
      this.now(),
      this.now(),
    );
    this.store.run('UPDATE players SET name=? WHERE id=?', name.slice(0, 100), id);
    if (privateChat !== undefined)
      this.store.run('UPDATE players SET private_chat=? WHERE id=?', privateChat, id);
    return this.player(id);
  }
  player(id: number): Player {
    let p = this.store.player(id);
    if (!p) throw new GameError('Jalankan /start terlebih dahulu.');
    if (p.lives < this.config.maxLives) {
      const elapsed = Math.max(0, this.now() - p.lives_at);
      const count = Math.floor(elapsed / this.config.refillMs);
      if (count > 0) {
        const lives = Math.min(this.config.maxLives, p.lives + count);
        this.store.run(
          'UPDATE players SET lives=?,lives_at=? WHERE id=?',
          lives,
          lives === this.config.maxLives ? this.now() : p.lives_at + count * this.config.refillMs,
          id,
        );
        p = this.store.player(id)!;
      }
    }
    return p;
  }
  progress(id: number, level: number): Progress {
    const p = this.player(id);
    if (!Number.isInteger(level) || level < 1 || level > 20 || level > p.unlocked)
      throw new GameError('Level masih terkunci atau di luar 1–20.');
    let record = this.store.get<Progress>(
      'SELECT * FROM progress WHERE user_id=? AND level=?',
      id,
      level,
    );
    if (!record) {
      this.store.run(
        'INSERT INTO progress(user_id,level,order_json,hints) VALUES(?,?,?,?)',
        id,
        level,
        JSON.stringify(this.catalog.order(level, this.config.shuffle)),
        this.config.initialHints,
      );
      record = this.store.get<Progress>(
        'SELECT * FROM progress WHERE user_id=? AND level=?',
        id,
        level,
      )!;
    }
    return record;
  }
  current(chat: number, user: number): Session | undefined {
    return this.store.get<Session>(
      'SELECT * FROM sessions WHERE chat_id=? AND active=1 AND user_id IN (?,0) ORDER BY user_id DESC LIMIT 1',
      chat,
      user,
    );
  }
  active(sid: string, user: number, chat: number): Session {
    const s = this.store.session(sid);
    if (!s || !s.active || s.chat_id !== chat || (s.user_id !== 0 && s.user_id !== user))
      throw new GameError('Tombol/soal sudah kedaluwarsa atau bukan milikmu.');
    return s;
  }
  start(chat: number, user: number, mode: Mode = 'progress', chosen?: number): Session {
    if (!['progress', 'practice', 'daily', 'group'].includes(mode))
      throw new GameError('Mode tidak valid.');
    if ((mode === 'group' && chat >= 0) || (mode !== 'group' && chat <= 0))
      throw new GameError('Progres privat dan kuis grup harus di chat yang sesuai.');
    if (
      chosen !== undefined &&
      (!Number.isInteger(chosen) ||
        chosen < (mode === 'practice' ? 0 : 1) ||
        chosen > (mode === 'practice' ? 399 : 20))
    )
      throw new GameError('Nomor level/soal tidak valid.');
    const old = this.current(chat, user);
    if (old?.deadline && old.deadline <= this.now()) this.store.transaction(() => this.expire(old));
    return this.store.transaction(() => {
      let p = this.player(user);
      const owner = mode === 'group' ? 0 : user;
      const existing = this.current(chat, user);
      if (existing) {
        // Never reset a running raja timer by replaying /play.
        if (existing.deadline && existing.deadline <= this.now()) {
          this.expire(existing);
          p = this.player(user);
        } else if (
          existing.mode === mode &&
          (chosen === undefined ||
            chosen === (mode === 'practice' ? existing.question_id : existing.level))
        )
          return existing;
        else throw new GameError('Masih ada soal aktif. Selesaikan atau gunakan /stop dahulu.');
      }
      if (mode === 'progress' && p.lives === 0)
        throw new GameError(
          `Nyawa habis. Tunggu refill (${Math.ceil(this.remainingLife(user) / 1000)} detik) atau kembali besok untuk hadiah harian.`,
        );
      let qid: number,
        level: number,
        position = 0;
      if (mode === 'progress') {
        level = chosen ?? p.selected;
        const progress = this.progress(user, level);
        if (progress.position >= 20)
          throw new GameError(
            'Level sudah selesai. Pilih level berikutnya atau /practice untuk latihan.',
          );
        position = progress.position;
        qid = (JSON.parse(progress.order_json) as number[])[position]!;
        this.store.run('UPDATE players SET selected=? WHERE id=?', level, user);
      } else if (mode === 'practice') {
        const current = this.progress(user, p.selected);
        const solved = this.store
          .all<{ question_id: number }>('SELECT question_id FROM solves WHERE user_id=?', user)
          .map((r) => r.question_id);
        const candidates = solved.length
          ? solved
          : [(JSON.parse(current.order_json) as number[])[Math.min(19, current.position)]!];
        qid = chosen ?? candidates[randomInt(candidates.length)]!;
        const question = this.catalog.get(qid);
        level = question.level;
        if (level > p.unlocked)
          throw new GameError('Latihan hanya untuk level yang sudah terbuka.');
        const progress = this.progress(user, level);
        if (
          !solved.includes(qid) &&
          (JSON.parse(progress.order_json) as number[]).indexOf(qid) > progress.position
        )
          throw new GameError('Soal belum terbuka. Selesaikan progres terlebih dahulu.');
      } else {
        qid = mode === 'daily' ? this.catalog.dailyId(dayUTC(this.now())) : randomInt(400);
        level = this.catalog.get(qid).level;
      }
      const q = this.catalog.get(qid);
      const sid = randomBytes(8).toString('hex');
      const deadline =
        mode === 'group'
          ? this.now() + 120000
          : mode === 'progress' && q.type === 'raja'
            ? this.now() + this.config.bossMs
            : 0;
      this.store.run(
        'INSERT INTO sessions(id,chat_id,user_id,initiator,mode,question_id,level,position,started_at,deadline,day) VALUES(?,?,?,?,?,?,?,?,?,?,?)',
        sid,
        chat,
        owner,
        user,
        mode,
        qid,
        level,
        position,
        this.now(),
        deadline,
        dayUTC(this.now()),
      );
      if (mode === 'progress') {
        const saved = this.store.get<{ revealed: string }>(
          'SELECT revealed FROM hints_state WHERE user_id=? AND question_id=?',
          user,
          qid,
        );
        if (saved) this.store.run('UPDATE sessions SET revealed=? WHERE id=?', saved.revealed, sid);
      }
      return this.store.session(sid)!;
    });
  }
  setMessage(sid: string, messageId: number): void {
    this.store.run('UPDATE sessions SET message_id=? WHERE id=?', messageId, sid);
  }
  loseLife(user: number): number {
    const p = this.player(user);
    this.store.run(
      'UPDATE players SET lives=?,lives_at=?,reminder_pending=1 WHERE id=?',
      Math.max(0, p.lives - 1),
      p.lives === this.config.maxLives ? this.now() : p.lives_at,
      user,
    );
    return this.player(user).lives;
  }
  remainingLife(user: number): number {
    const p = this.player(user);
    return p.lives >= this.config.maxLives
      ? 0
      : Math.max(0, p.lives_at + this.config.refillMs - this.now());
  }
  expire(s: Session): void {
    if (!this.store.run('UPDATE sessions SET active=0 WHERE id=? AND active=1', s.id)) return;
    if (s.mode === 'progress') {
      const lives = this.loseLife(s.user_id);
      if (!lives) this.rollback(s.user_id, s.level);
    }
  }
  rollback(user: number, level: number): void {
    this.store.run(
      'UPDATE progress SET position=checkpoint WHERE user_id=? AND level=?',
      user,
      level,
    );
  }
  answer(
    sid: string,
    user: number,
    chat: number,
    text: string,
    replyTo?: number,
    free = false,
  ): AnswerResult {
    if ([...text].length > 200)
      throw new GameError('Jawaban terlalu panjang (maksimum 200 karakter).');
    return this.store.transaction(() => {
      const s = this.active(sid, user, chat),
        q = this.catalog.get(s.question_id),
        p = this.player(user);
      if (replyTo !== undefined && replyTo !== s.message_id)
        throw new GameError('Balas gambar soal yang masih aktif, bukan soal lama.');
      if (s.deadline && this.now() >= s.deadline) {
        this.expire(s);
        return { kind: 'timeout', lives: this.player(user).lives, question: q, session: s };
      }
      if (free && (s.mode !== 'progress' || q.type !== 'biasa' || p.free_answers < 1))
        throw new GameError(
          'Free answer hanya untuk soal biasa dalam progres dan membutuhkan saldo.',
        );
      if (free) this.store.run('UPDATE players SET free_answers=free_answers-1 WHERE id=?', user);
      const delta = free ? 0 : distance(text, q.answer);
      if (delta > 0 && delta <= 2) return { kind: 'near', lives: p.lives, question: q, session: s };
      if (delta > 2) {
        const lives = s.mode === 'progress' ? this.loseLife(user) : p.lives;
        if (s.mode === 'progress' && lives === 0) {
          this.store.run('UPDATE sessions SET active=0 WHERE id=?', sid);
          this.rollback(user, s.level);
        }
        return { kind: 'wrong', lives, question: q, session: s };
      }
      this.store.run('UPDATE sessions SET active=0 WHERE id=?', sid);
      let points = 0,
        checkpoint = false,
        nextLevel = s.level,
        completed = false;
      if (s.mode === 'progress') {
        this.store.run('DELETE FROM hints_state WHERE user_id=? AND question_id=?', user, q.id);
        const earned = free ? 0 : q.type === 'raja' ? 30 : 10;
        if (
          this.store.run(
            'INSERT OR IGNORE INTO solves(user_id,question_id,earned,solved_at) VALUES(?,?,?,?)',
            user,
            q.id,
            earned,
            this.now(),
          )
        )
          points = earned;
        const next = s.position + 1;
        checkpoint = s.level >= 11 && next === 10;
        this.store.run(
          'UPDATE progress SET position=?,checkpoint=CASE WHEN ?=1 THEN ? ELSE checkpoint END WHERE user_id=? AND level=?',
          next,
          checkpoint ? 1 : 0,
          next,
          user,
          s.level,
        );
        completed = next === 20;
        if (completed) {
          nextLevel = Math.min(20, s.level + 1);
          this.store.run(
            'UPDATE players SET unlocked=MAX(unlocked,?),selected=? WHERE id=?',
            nextLevel,
            nextLevel,
            user,
          );
        }
      } else if (s.mode === 'daily' || s.mode === 'group') {
        const key = s.mode === 'daily' ? `daily:${s.day}` : `group:${s.day}:${q.id}`;
        if (
          this.store.run('INSERT OR IGNORE INTO awards(user_id,award_key) VALUES(?,?)', user, key)
        )
          points = 5;
      }
      this.store.run('UPDATE players SET score=score+? WHERE id=?', points, user);
      return {
        kind: 'correct',
        answer: q.answer,
        points,
        checkpoint,
        nextLevel,
        completed,
        lives: this.player(user).lives,
        question: q,
        session: s,
      };
    });
  }
  hint(sid: string, user: number, chat: number): string {
    return this.store.transaction(() => {
      const s = this.active(sid, user, chat),
        q = this.catalog.get(s.question_id);
      if (s.mode !== 'progress' || q.type !== 'biasa')
        throw new GameError('Hint hanya tersedia untuk soal biasa pada progres privat.');
      const progress = this.progress(user, s.level);
      const revealed = JSON.parse(s.revealed) as number[];
      const letters = [...q.answer];
      const locked = letters
        .map((_, i) => i)
        .filter((i) => !/\s/u.test(letters[i]!) && !revealed.includes(i));
      if (!locked.length) return letters.join(' ');
      if (progress.hints < 1)
        throw new GameError(
          'Hint habis. Ambil /daily atau gunakan /selfie (maksimum sekali sehari).',
        );
      revealed.push(locked[randomInt(locked.length)]!);
      revealed.sort((a, b) => a - b);
      this.store.run(
        'UPDATE progress SET hints=hints-1 WHERE user_id=? AND level=?',
        user,
        s.level,
      );
      this.store.run('UPDATE sessions SET revealed=? WHERE id=?', JSON.stringify(revealed), sid);
      this.store.run(
        'INSERT INTO hints_state(user_id,question_id,revealed) VALUES(?,?,?) ON CONFLICT(user_id,question_id) DO UPDATE SET revealed=excluded.revealed',
        user,
        q.id,
        JSON.stringify(revealed),
      );
      return letters.map((c, i) => (/\s/u.test(c) || revealed.includes(i) ? c : '_')).join(' ');
    });
  }
  hintText(s: Session): string {
    const revealed = JSON.parse(s.revealed) as number[];
    return [...this.catalog.get(s.question_id).answer]
      .map((c, i) => (/\s/u.test(c) || revealed.includes(i) ? c : '_'))
      .join(' ');
  }
  stop(sid: string, user: number, chat: number, groupModerator = false): void {
    this.store.transaction(() => {
      const s = this.active(sid, user, chat);
      if (s.user_id === 0 && s.initiator !== user && !groupModerator)
        throw new GameError('Hanya pembuat kuis atau admin grup dapat menghentikannya.');
      if (s.deadline && s.mode === 'progress')
        this.expire(s); // prevent infinite timer restarts
      else this.store.run('UPDATE sessions SET active=0 WHERE id=?', sid);
    });
  }
  claimDaily(user: number): { hints: number; answers: number; level: number } {
    return this.store.transaction(() => {
      const p = this.player(user),
        day = dayUTC(this.now());
      if (p.daily_claim >= day)
        throw new GameError('Hadiah hari ini sudah diambil. Kembali setelah 00:00 UTC.');
      const progress = this.progress(user, p.selected);
      this.store.run(
        'UPDATE progress SET hints=MIN(100,hints+?) WHERE user_id=? AND level=?',
        this.config.dailyHints,
        user,
        progress.level,
      );
      this.store.run(
        'UPDATE players SET daily_claim=?,free_answers=MIN(3,free_answers+?) WHERE id=?',
        day,
        this.config.dailyAnswers,
        user,
      );
      return {
        hints: Math.min(this.config.dailyHints, 100 - progress.hints),
        answers: Math.min(this.config.dailyAnswers, 3 - p.free_answers),
        level: progress.level,
      };
    });
  }
  requestPhoto(user: number, level: number): void {
    const p = this.player(user);
    if (
      !Number.isInteger(level) ||
      level < 1 ||
      level > 19 ||
      level % 2 !== 1 ||
      level > p.unlocked
    )
      throw new GameError('Frame harus level ganjil yang sudah terbuka.');
    this.store.run('UPDATE players SET awaiting_photo=? WHERE id=?', level, user);
  }
  photoReward(user: number): boolean {
    return this.store.transaction(() => {
      const p = this.player(user);
      this.store.run('UPDATE players SET awaiting_photo=0 WHERE id=?', user);
      if (p.photo_day >= dayUTC(this.now())) return false;
      this.progress(user, p.selected);
      this.store.run(
        'UPDATE progress SET hints=MIN(100,hints+2) WHERE user_id=? AND level=?',
        user,
        p.selected,
      );
      this.store.run('UPDATE players SET photo_day=? WHERE id=?', dayUTC(this.now()), user);
      return true;
    });
  }
  suggest(user: number, body: string): void {
    if (!body.trim() || body.length > 2000)
      throw new GameError('Gunakan /suggest ide soal/deskripsi (maksimum 2.000 karakter).');
    if (
      (this.store.get<{ n: number }>(
        'SELECT COUNT(*) n FROM suggestions WHERE user_id=? AND created_at>=?',
        user,
        Date.parse(dayUTC(this.now()) + 'T00:00:00Z'),
      )?.n ?? 0) >= 5
    )
      throw new GameError('Maksimum 5 ide per hari.');
    this.store.run(
      'INSERT INTO suggestions(user_id,body,created_at) VALUES(?,?,?)',
      user,
      body.trim(),
      this.now(),
    );
  }
  leaderboard(): { name: string; score: number }[] {
    return this.store.all('SELECT name,score FROM players ORDER BY score DESC,id LIMIT 10');
  }
  export(user: number): object {
    return {
      schemaVersion: 2,
      exportedAt: new Date(this.now()).toISOString(),
      player: this.player(user),
      progress: this.store.all('SELECT * FROM progress WHERE user_id=?', user),
      solves: this.store.all('SELECT * FROM solves WHERE user_id=?', user),
      hints: this.store.all('SELECT * FROM hints_state WHERE user_id=?', user),
      awards: this.store.all('SELECT * FROM awards WHERE user_id=?', user),
      suggestions: this.store.all('SELECT body,created_at FROM suggestions WHERE user_id=?', user),
    };
  }
  delete(user: number): void {
    this.store.transaction(() => {
      this.store.run('DELETE FROM sessions WHERE user_id=? OR initiator=?', user, user);
      this.store.run('DELETE FROM players WHERE id=?', user);
    });
  }
  reminder(user: number, enabled: boolean): void {
    this.store.run('UPDATE players SET reminders=? WHERE id=?', enabled ? 1 : 0, user);
    if (!enabled) this.store.run('DELETE FROM jobs WHERE user_id=?', user);
  }
  queue(user: number, chat: number, body: string, key: string): void {
    this.store.run(
      'INSERT OR IGNORE INTO jobs(user_id,chat_id,body,next_at,key) VALUES(?,?,?,?,?)',
      user,
      chat,
      body,
      this.now(),
      key,
    );
  }
  tick(): void {
    this.store.transaction(() => {
      for (const s of this.store.all<Session>(
        'SELECT * FROM sessions WHERE active=1 AND deadline>0 AND deadline<=?',
        this.now(),
      )) {
        this.expire(s);
        this.queue(
          s.initiator,
          s.chat_id,
          `⏰ Waktu habis untuk soal #${s.question_id + 1}. ${s.mode === 'progress' ? 'Satu nyawa berkurang. Gunakan /play untuk mencoba lagi.' : 'Gunakan /group untuk kuis baru.'}`,
          `timeout:${s.id}`,
        );
      }
      for (const record of this.store.all<Player>(
        'SELECT * FROM players WHERE reminder_pending=1 AND reminders=1 AND private_chat IS NOT NULL',
      )) {
        const p = this.player(record.id);
        if (p.lives === this.config.maxLives && p.private_chat !== null) {
          this.queue(
            p.id,
            p.private_chat,
            '❤️ Nyawa sudah penuh. Yuk lanjutkan dengan /play!',
            `hearts:${p.id}:${p.lives_at}`,
          );
          this.store.run('UPDATE players SET reminder_pending=0 WHERE id=?', p.id);
        }
      }
      this.store.run('DELETE FROM updates WHERE created_at<?', this.now() - 86400000);
      this.store.run(
        'DELETE FROM sessions WHERE active=0 AND started_at<?',
        this.now() - 7 * 86400000,
      );
    });
  }
  jobs(): Job[] {
    return this.store.all('SELECT * FROM jobs WHERE next_at<=? ORDER BY id LIMIT 20', this.now());
  }
  jobDone(id: number): void {
    this.store.run('DELETE FROM jobs WHERE id=?', id);
  }
  jobFailed(job: Job, permanent = false, retrySeconds?: number): void {
    if (permanent || job.attempts + 1 >= 5) {
      this.jobDone(job.id);
      return;
    }
    this.store.run(
      'UPDATE jobs SET attempts=attempts+1,next_at=? WHERE id=?',
      this.now() +
        (retrySeconds ? retrySeconds * 1000 : Math.min(300000, 5000 * 2 ** job.attempts)),
      job.id,
    );
  }
}
