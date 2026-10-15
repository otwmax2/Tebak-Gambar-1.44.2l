import { loadEnvironment, readConfig } from './config.js';
import { Catalog } from './catalog.js';
import { Store } from './store.js';
import { Engine } from './engine.js';
import { createRuntime, COMMANDS } from './bot.js';
async function main(): Promise<void> {
  loadEnvironment(); const config = readConfig();
  if (!/^\d+:[A-Za-z0-9_-]+$/.test(config.token)) throw new Error('Set BOT_TOKEN securely.');
  const catalog=new Catalog(config.assetRoot), store=new Store(config.database);
  const runtime=createRuntime(new Engine(store,catalog,config),config); let stopping=false;
  const stop=():void=>{if(stopping)return;stopping=true;void runtime.close();if(runtime.bot.isRunning())void runtime.bot.stop().catch(()=>{});};
  process.once('SIGINT',stop);process.once('SIGTERM',stop);
  try {
    await runtime.bot.init(); await runtime.bot.api.deleteWebhook({drop_pending_updates:false});
    await runtime.bot.api.setMyCommands(COMMANDS.map(([command,description])=>({command,description})));
    if(stopping)return;
    runtime.startScheduler();
    console.log(JSON.stringify({event:'bot-start',mode:'long-polling',questions:400}));
    await runtime.bot.start({allowed_updates:['message','callback_query','inline_query']});
  } finally {
    await runtime.close();store.close();process.removeListener('SIGINT',stop);process.removeListener('SIGTERM',stop);
  }
}
main().catch(()=>{console.error('Bot gagal dimulai. Periksa BOT_TOKEN, jaringan Telegram, konflik polling, SQLite dan konfigurasi. Token tidak dicetak.');process.exitCode=1;});
