import fs from 'node:fs';
import path from 'node:path';
import { randomBytes } from 'node:crypto';
import { DatabaseSync } from 'node:sqlite';
import { Bot } from 'grammy';
import sharp from 'sharp';
import { BOT_ROOT, validProductionToken, type Config } from './config.js';
import { Catalog } from './catalog.js';

export interface Check { name: string; status: 'pass' | 'warn' | 'fail'; detail: string }
export interface TelegramProbe {
  getMe(): Promise<{ is_bot: boolean; can_read_all_group_messages?: boolean }>;
  getWebhookInfo(): Promise<{ url: string }>;
}
export interface PreflightOptions {
  offline?: boolean;
  telegram?: boolean;
  nodeVersion?: string;
  resourceRoot?: string;
  probe?: TelegramProbe;
}
/** Local readiness checks; only explicit telegram:true enables network access. */
export async function preflight(config: Config, options: PreflightOptions = {}): Promise<Check[]> {
  const checks: Check[] = [];
  const add = (name: string, status: Check['status'], detail: string): void => { checks.push({name, status, detail}); };
  if (process.getuid?.() === 0) add('service-user', 'warn', 'Jalankan bot sebagai akun non-root; izin root bukan bukti izin akun layanan.');
  const version = (options.nodeVersion ?? process.versions.node).split('.').map(Number);
  add('node', version[0]! > 22 || (version[0] === 22 && version[1]! >= 13) ? 'pass' : 'fail', 'Node.js 22.13+ diperlukan; gunakan LTS yang didukung.');
  const tokenOK = validProductionToken(config.token);
  add('token', tokenOK ? 'pass' : options.offline ? 'warn' : 'fail', tokenOK ? 'Format token valid; autentikasi belum dibuktikan tanpa --telegram.' : 'BOT_TOKEN kosong, tidak valid, atau token simulasi; isi secara lokal.');
  add('admins', config.admins.size ? 'pass' : 'warn', config.admins.size ? 'ADMIN_IDS terkonfigurasi.' : 'ADMIN_IDS kosong: fitur admin tidak dapat digunakan.');
  try { new Catalog(config.assetRoot); add('questions', 'pass', '400 hash gambar dan manifest 20 level valid.'); }
  catch { add('questions', 'fail', 'Manifest/aset tidak lengkap atau hash tidak cocok; periksa checkout.'); }
  const resources = options.resourceRoot ?? path.resolve(BOT_ROOT, '../resources');
  try {
    for (let level = 1; level <= 19; level += 2) {
      const image = sharp(path.join(resources, 'res/drawable', `level_${level}.png`));
      const metadata = await image.metadata();
      const stats = await image.stats();
      if (metadata.width !== 500 || metadata.height !== 500 || !metadata.hasAlpha || stats.channels[3]?.min !== 0 || stats.channels[3]?.max !== 255) throw new Error('frame');
    }
    add('frames', 'pass', '10 frame 500×500 dengan alpha tersedia.');
  } catch { add('frames', 'fail', 'Frame asli level ganjil 1–19 hilang/tidak valid.'); }
  try {
    const sounds = fs.readdirSync(path.join(resources, 'res/raw')).filter(name => name.endsWith('.ogg'));
    if (sounds.length !== 11) throw new Error('sounds');
    for (const name of sounds) {
      const fd = fs.openSync(path.join(resources, 'res/raw', name), 'r');
      try { const header = Buffer.alloc(4); if (fs.readSync(fd, header, 0, 4, 0) !== 4 || header.toString() !== 'OggS') throw new Error('ogg'); }
      finally { fs.closeSync(fd); }
    }
    add('sounds', 'pass', '11 file Ogg asli tersedia.');
  } catch { add('sounds', 'fail', '11 sound Ogg belum lengkap atau header rusak.'); }
  if (config.database === ':memory:') add('storage', 'fail', 'Produksi wajib memakai SQLite persisten, bukan :memory:.');
  else {
    let probeFile: string | undefined;
    try {
      const directory = path.dirname(config.database);
      fs.mkdirSync(directory, {recursive: true, mode: 0o700});
      probeFile = path.join(directory, `.preflight-${randomBytes(12).toString('hex')}`);
      const fd = fs.openSync(probeFile, 'wx', 0o600);
      fs.closeSync(fd);
      add('storage', 'pass', 'Direktori database dapat ditulis oleh akun proses ini.');
      if (process.platform !== 'win32' && (fs.statSync(directory).mode & 0o077)) add('storage-permissions', 'warn', 'Direktori runtime dapat diakses akun lain; gunakan directory khusus mode 700.');
    } catch { add('storage', 'fail', 'Direktori database tidak dapat ditulis; periksa ownership, disk dan path.'); }
    finally { try { if (probeFile && fs.existsSync(probeFile)) fs.unlinkSync(probeFile); } catch { add('storage-cleanup', 'warn', 'Probe temporary belum dapat dihapus; periksa izin direktori runtime.'); } }
    if (fs.existsSync(config.database)) {
      try { fs.accessSync(config.database, fs.constants.W_OK); add('database-write', 'pass', 'File database dapat ditulis oleh akun proses ini (tanpa mengubah data).'); }
      catch { add('database-write', 'fail', 'File SQLite tidak writable oleh akun layanan; periksa permission/ACL.'); }
      let db: DatabaseSync | undefined;
      try {
        db = new DatabaseSync(config.database, {readOnly: true});
        db.exec('PRAGMA busy_timeout=5000');
        const integrity = db.prepare('PRAGMA quick_check').all();
        if (integrity.length !== 1 || integrity[0]?.quick_check !== 'ok') throw new Error('integrity');
        if (db.prepare('PRAGMA foreign_key_check').all().length) throw new Error('foreign keys');
        const versions = db.prepare('SELECT version FROM migrations ORDER BY version').all().map(row => Number(row.version));
        if (!versions.includes(1) || versions.some(v => ![1, 2].includes(v))) throw new Error('schema');
        add('database', 'pass', versions.includes(2) ? 'SQLite quick_check/FK dan schema 1–2 valid (tidak dimigrasikan oleh doctor).' : 'Schema 1 valid; startup akan menambahkan migration 2. Backup dahulu.');
        if (process.platform !== 'win32' && (fs.statSync(config.database).mode & 0o077)) add('database-permissions', 'warn', 'Batasi file SQLite dan backup ke mode 600.');
      } catch { add('database', 'fail', 'SQLite tidak dapat dibaca, rusak, atau schema tidak didukung; jangan overwrite DB.'); }
      finally { db?.close(); }
    } else add('database', 'pass', 'Belum ada database; startup akan membuat schema baru.');
  }
  add('single-instance', 'warn', 'Doctor tidak membuktikan ketiadaan poller lain. Gunakan satu proses untuk token/database ini.');
  if (options.telegram && !options.offline) {
    if (!tokenOK) add('telegram', 'fail', 'Probe jaringan dilewati karena token tidak valid.');
    else {
      try {
        // No retries/polling/webhook changes. Never return raw errors or request URLs.
        const api = options.probe ?? new Bot(config.token, {client: {timeoutSeconds: 15}}).api;
        const me = await api.getMe();
        if (!me.is_bot) throw new Error('not bot');
        const webhook = await api.getWebhookInfo();
        add('telegram', 'pass', 'getMe dan getWebhookInfo berhasil; token terautentikasi pada host ini.');
        add('webhook', webhook.url ? 'warn' : 'pass', webhook.url ? 'Webhook masih aktif. Hentikan deployment lama; startup polling akan menghapus webhook tanpa drop updates.' : 'Tidak ada webhook aktif.');
        if (!me.can_read_all_group_messages) add('group-privacy', 'warn', 'Untuk jawaban teks biasa di grup, periksa privacy mode BotFather/permission admin.');
      } catch { add('telegram', 'fail', 'Autentikasi/probe Telegram gagal. Periksa token, DNS, HTTPS dan firewall; detail berkunci tidak dicetak.'); }
    }
  } else add('telegram', 'warn', 'Tidak ada akses jaringan. Jalankan doctor --telegram pada server pemilik untuk verifikasi API read-only.');
  return checks;
}
