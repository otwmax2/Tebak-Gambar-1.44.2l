import { loadEnvironment, readConfig } from '../src/config.js';
import { createBackup } from '../src/backup.js';
try {
  loadEnvironment();
  const output = process.argv[2];
  if (!output || process.argv.length !== 3) throw new Error('Invalid arguments');
  createBackup(readConfig().database, output);
  console.log('Consistent SQLite backup verified. Private mode 600; store securely.');
} catch {
  console.error(
    'Backup gagal. Gunakan tujuan BARU, periksa DB sumber, disk dan izin. File yang sudah ada tidak ditimpa; detail sensitif tidak dicetak.',
  );
  process.exitCode = 1;
}
