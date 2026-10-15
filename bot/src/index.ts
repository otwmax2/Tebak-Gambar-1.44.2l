import { loadEnvironment, readConfig, validProductionToken } from './config.js';
import { acquireInstanceLock, InstanceLockError } from './instance-lock.js';
import { preflight } from './preflight.js';
import { Catalog } from './catalog.js';
import { Store } from './store.js';
import { Engine } from './engine.js';
import { createRuntime, COMMANDS } from './bot.js';
async function main(): Promise<void> {
  loadEnvironment();
  const config = readConfig();
  if (!validProductionToken(config.token)) throw new Error('Set BOT_TOKEN securely.');
  if (config.database === ':memory:') throw new Error('Production requires persistent SQLite.');
  const readiness = await preflight(config);
  const failures = readiness.filter((check) => check.status === 'fail');
  if (failures.length) {
    console.error(
      JSON.stringify({ event: 'preflight-failure', checks: failures.map((check) => check.name) }),
    );
    throw new Error('Production preflight failed.');
  }
  const releaseInstance = acquireInstanceLock(config.database);
  try {
    const catalog = new Catalog(config.assetRoot),
      store = new Store(config.database);
    const runtime = createRuntime(new Engine(store, catalog, config), config);
    let stopping = false;
    const stop = (): void => {
      if (stopping) return;
      stopping = true;
      void runtime.close();
      if (runtime.bot.isRunning()) void runtime.bot.stop().catch(() => {});
    };
    process.once('SIGINT', stop);
    process.once('SIGTERM', stop);
    try {
      await runtime.bot.init(runtime.signal);
      await runtime.bot.api.deleteWebhook({ drop_pending_updates: false });
      await runtime.bot.api.setMyCommands(
        COMMANDS.map(([command, description]) => ({ command, description })),
      );
      if (stopping) return;
      runtime.startScheduler();
      console.log(JSON.stringify({ event: 'bot-start', mode: 'long-polling', questions: 400 }));
      await runtime.bot.start({ allowed_updates: ['message', 'callback_query', 'inline_query'] });
    } catch (error) {
      if (!stopping) throw error;
    } finally {
      await runtime.close();
      store.close();
      process.removeListener('SIGINT', stop);
      process.removeListener('SIGTERM', stop);
    }
  } finally {
    releaseInstance();
  }
}
main().catch((error) => {
  if (error instanceof InstanceLockError) {
    console.error(
      'Instance lokal lain memakai database ini. Hentikan proses lama; jangan hapus file lock ketika bot berjalan.',
    );
    process.exitCode = 1;
    return;
  }
  console.error(
    'Bot gagal dimulai. Periksa BOT_TOKEN, jaringan Telegram, konflik polling, SQLite dan konfigurasi. Token tidak dicetak.',
  );
  process.exitCode = 1;
});
