import fs from 'node:fs';
import path from 'node:path';
import { execFileSync } from 'node:child_process';
import { BOT_ROOT } from '../src/config.js';
const root = path.resolve(BOT_ROOT, '..'),
  target = path.join(BOT_ROOT, 'data/repository-map.csv'),
  summary = path.join(BOT_ROOT, 'data/repository-coverage.json');
// Include these generated indexes in their own path-coverage snapshot.
for (const file of [target, summary]) if (!fs.existsSync(file)) fs.writeFileSync(file, '');
const files = [
  ...new Set(
    execFileSync('git', ['ls-files', '--cached', '--others', '--exclude-standard', '-z'], {
      cwd: root,
      maxBuffer: 32 * 1024 * 1024,
    })
      .toString()
      .split('\0')
      .filter(Boolean),
  ),
].sort();
const modules: Record<string, string> = {
  component: 'bot.ts',
  database: 'store.ts',
  home: 'bot.ts',
  howtoplay: 'bot.ts',
  levelselection: 'engine.ts',
  model: 'engine.ts',
  network: 'catalog.ts (offline; no original API)',
  question: 'engine.ts',
  selfie: 'media.ts',
  sendquestion: 'engine.ts:suggest',
  service: 'engine.ts:tick + bot.ts:flushJobs',
  splash: 'bot.ts:start',
  sticker: 'media.ts:sticker',
  story: 'bot.ts:start',
  tutorial: 'bot.ts:help',
};
const aux: Record<string, string> = {
  g8: 'archived generated resources',
  h8: 'bot.ts:feedback',
  i8: 'catalog.ts (local assets, no download)',
  j8: 'bot.ts (native Telegram controls, no ads)',
  k8: 'engine.ts:free answer',
  l8: 'bot.ts:feedback',
  m8: 'engine.ts',
  n8: 'store.ts',
  o8: 'bot.ts (no Android data binding)',
  p8: 'bot.ts:callbacks',
  r8: 'bot.ts:help',
  s8: 'Telegram identity (no OAuth)',
  w8: 'catalog.ts (local assets)',
  y8: 'engine.ts + media.ts (no legacy crypto)',
};
function classify(file: string): [string, string, string] {
  if (file.startsWith('bot/'))
    return ['TypeScript bot / deployment / tests', 'active implementation or tooling', 'bot/'];
  if (/^audit\/decrypted-levels\/images\/.*\.png$/.test(file))
    return [
      '400 decoded question images',
      'active runtime assets',
      'bot/src/catalog.ts + bot/src/bot.ts',
    ];
  if (file.startsWith('audit/'))
    return [
      'audit, decoded metadata or downloadable evidence',
      'preserved; catalog derived from verified extraction',
      'audit/ + bot/data/catalog.json',
    ];
  if (file.startsWith('sources/com/tebakgambar/')) {
    const area = file.split('/')[3]!;
    return [
      'Android first-party Java',
      'domain mapped; Android source preserved, not transpiled',
      modules[area] ?? 'bot.ts + engine.ts',
    ];
  }
  if (file.startsWith('sources/')) {
    const area = file.split('/')[1]!;
    if (aux[area])
      return [
        'identified application-support Java',
        'mapped by responsibility; source preserved',
        aux[area]!,
      ];
    return [
      'decompiled third-party / obfuscated Java',
      'archived; SDK classes not executable in Telegram',
      'grammY + Node.js replace platform; no wholesale SDK port',
    ];
  }
  if (file.startsWith('smali/'))
    return [
      'Dalvik bytecode text',
      'reference evidence only, preserved',
      'no Android VM in Telegram bot',
    ];
  if (file.startsWith('resources/assets/level/'))
    return [
      'original encrypted content ZIP',
      'preserved; all 400 payloads already decoded/verified',
      'audit/decrypted-levels/images/ + bot/src/catalog.ts',
    ];
  if (/^resources\/res\/drawable\/level_(?:1|3|5|7|9|11|13|15|17|19)\.png$/.test(file))
    return ['offline selfie frames', 'active runtime asset', 'bot/src/media.ts'];
  if (/^resources\/res\/raw\/.*\.ogg$/.test(file))
    return [
      '11 original game sounds',
      'available through /sound as Ogg document',
      'bot/src/bot.ts',
    ];
  if (file === 'resources/assets/default_level.json')
    return [
      'level metadata and quotes',
      '20 available levels imported; 21–64 lack local questions',
      'bot/data/catalog.json',
    ];
  if (file === 'resources/AndroidManifest.xml')
    return [
      'Android platform declaration',
      'reference only; no permissions/Activities in Telegram',
      'bot/.env.example + bot/src/config.ts',
    ];
  if (file.startsWith('resources/'))
    return [
      'other Android UI/font/SDK/signature/resource',
      'preserved; unsupported platform artifacts not copied into runtime',
      'Telegram UI/client replaces Android rendering; see FEATURE_PARITY.md',
    ];
  return [
    'repository metadata / documentation',
    'preserved or new project configuration',
    'repository',
  ];
}
const counts: Record<string, number> = {};
const rows = files.map((file) => {
  const [category, treatment, module] = classify(file);
  counts[category] = (counts[category] ?? 0) + 1;
  return [file, category, treatment, module];
});
const csv = (cells: string[]) =>
  cells.map((cell) => '"' + cell.replaceAll('"', '""') + '"').join(',');
fs.writeFileSync(
  target,
  [
    csv(['path', 'category', 'telegram_treatment', 'implementation_or_reference']),
    ...rows.map(csv),
  ].join('\n') + '\n',
);
fs.writeFileSync(
  summary,
  JSON.stringify(
    {
      referenceHead: execFileSync('git', ['rev-parse', 'HEAD'], { cwd: root }).toString().trim(),
      scope:
        'all tracked + untracked nonignored working-tree paths at generation; path classification, NOT 100% semantic equivalence',
      filesMapped: files.length,
      categories: counts,
      excluded: 'Git internals, dependency/cache/build/runtime/credential files ignored by Git',
      runtimeQuestions: 400,
      runtimeLevels: 20,
    },
    null,
    2,
  ) + '\n',
);
console.log(
  `Mapped all ${files.length} tracked/nonignored working-tree paths; no claim of wholesale Android SDK conversion.`,
);
