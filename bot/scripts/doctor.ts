import { loadEnvironment, readConfig } from '../src/config.js';
import { preflight } from '../src/preflight.js';
async function main(): Promise<void> {
  const flags = process.argv.slice(2);
  if (flags.includes('--help')) {
    console.log('Usage: npm run doctor -- [--offline | --telegram] [--json]\nOffline: token optional, never contacts Telegram. Default: local production checks.\n--telegram: explicit read-only getMe/getWebhookInfo on the deployment host.');
    return;
  }
  if (flags.some(flag => !['--offline', '--telegram', '--json'].includes(flag)) || (flags.includes('--offline') && flags.includes('--telegram'))) {
    console.error('Invalid flags. Use --help.'); process.exitCode = 2; return;
  }
  try {
    loadEnvironment();
    const checks = await preflight(readConfig(), {offline: flags.includes('--offline'), telegram: flags.includes('--telegram')});
    const ok = checks.every(check => check.status !== 'fail');
    if (flags.includes('--json')) console.log(JSON.stringify({ok, telegramRequested: flags.includes('--telegram'), checks}, null, 2));
    else {
      for (const check of checks) console.log(`${check.status.toUpperCase()} ${check.name}: ${check.detail}`);
      console.log(ok ? 'Local checks passed. Warnings and live acceptance still require operator review.' : 'NOT READY: resolve failures before deployment.');
    }
    if (!ok) process.exitCode = 1;
  } catch {
    // No raw exceptions: environment/config can contain tokens or sensitive paths.
    console.error('Preflight gagal. Periksa environment, konfigurasi dan izin filesystem. Nilai rahasia tidak dicetak.');
    process.exitCode = 1;
  }
}
void main();
