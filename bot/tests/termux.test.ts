import { afterEach, beforeEach, expect, it } from 'vitest';
import fs from 'node:fs';
import path from 'node:path';
import os from 'node:os';
import { execFileSync, spawnSync } from 'node:child_process';
import ts from 'typescript';
import { BOT_ROOT } from '../src/config.js';
import { acquireInstanceLock } from '../src/instance-lock.js';
let root: string, home: string, bot: string;
beforeEach(() => {
  root = fs.mkdtempSync(path.join(os.tmpdir(), 'tg-termux-'));
  home = path.join(root, 'home');
  bot = path.join(root, 'repo with spaces', 'bot');
  fs.mkdirSync(home);
  fs.mkdirSync(path.join(bot, 'deploy'), { recursive: true });
  fs.copyFileSync(
    path.join(BOT_ROOT, 'deploy/termux-launcher.sh'),
    path.join(bot, 'deploy/termux-launcher.sh'),
  );
  fs.writeFileSync(
    path.join(bot, 'deploy/termux-run.sh'),
    '#!/bin/bash\nprintf ready > "$HOME/ran"\n',
  );
});
afterEach(() => fs.rmSync(root, { recursive: true, force: true }));
const launcher = (...args: string[]) =>
  spawnSync('bash', [path.join(bot, 'deploy/termux-launcher.sh'), ...args], {
    env: { ...process.env, HOME: home },
    encoding: 'utf8',
  });
it('generated launcher actually executes even with spaces in the repository path', () => {
  expect(launcher().status).toBe(0);
  const file = path.join(home, 'run-tebak-gambar-bot.sh');
  expect(fs.statSync(file).mode & 0o777).toBe(0o700);
  expect(fs.readFileSync(file, 'utf8').split('\n')[1]).toBe('set -euo pipefail');
  execFileSync('bash', [file], { env: { ...process.env, HOME: home } });
  expect(fs.readFileSync(path.join(home, 'ran'), 'utf8')).toBe('ready');
});
it('existing broken single-line launcher is preserved unless replacement is explicit', () => {
  const file = path.join(home, 'run-tebak-gambar-bot.sh'),
    old = '#!/bin/bash\nset -e exec /missing\n';
  fs.writeFileSync(file, old);
  expect(launcher().status).toBe(1);
  expect(fs.readFileSync(file, 'utf8')).toBe(old);
  expect(launcher('--replace').status).toBe(0);
  const backup = fs.readdirSync(home).find((name) => name.includes('.bak-'))!;
  expect(fs.readFileSync(path.join(home, backup), 'utf8')).toBe(old);
  expect(fs.statSync(path.join(home, backup)).mode & 0o777).toBe(0o600);
  expect(fs.readdirSync(home).filter((name) => name.startsWith('.tebak-launcher.'))).toEqual([]);
});
it('launcher refuses symlinks without changing their referents', () => {
  const outside = path.join(root, 'outside');
  fs.writeFileSync(outside, 'keep');
  fs.symlinkSync(outside, path.join(home, 'run-tebak-gambar-bot.sh'));
  expect(launcher('--replace').status).toBe(1);
  expect(fs.readFileSync(outside, 'utf8')).toBe('keep');
});
it('launcher rejects unknown arguments without creating files', () => {
  expect(launcher('--unknown').status).toBe(2);
  expect(fs.readdirSync(home)).toEqual([]);
});
function prepareFixture() {
  fs.copyFileSync(
    path.join(BOT_ROOT, 'deploy/termux-prepare.sh'),
    path.join(bot, 'deploy/termux-prepare.sh'),
  );
  fs.writeFileSync(path.join(bot, 'package.json'), '{"type":"module"}');
  fs.writeFileSync(path.join(bot, '.env'), 'DATABASE_PATH=./runtime/game.sqlite\n');
  fs.mkdirSync(path.join(bot, 'dist/src'), { recursive: true });
  for (const name of ['config', 'instance-lock'])
    fs.writeFileSync(
      path.join(bot, 'dist/src', name + '.js'),
      ts.transpileModule(fs.readFileSync(path.join(BOT_ROOT, 'src', name + '.ts'), 'utf8'), {
        compilerOptions: { target: ts.ScriptTarget.ES2023, module: ts.ModuleKind.ESNext },
      }).outputText,
    );
  const bin = path.join(root, 'bin');
  fs.mkdirSync(bin);
  fs.writeFileSync(
    path.join(bin, 'npx'),
    '#!/bin/bash\nprintf called > "$HOME/npx-called"\nexit 42\n',
    { mode: 0o700 },
  );
  return () =>
    spawnSync('bash', [path.join(bot, 'deploy/termux-prepare.sh')], {
      cwd: bot,
      env: { ...process.env, HOME: home, PATH: bin + path.delimiter + process.env.PATH },
      encoding: 'utf8',
    });
}
it('prepare refuses an active local owner before invoking npm or modifying configuration', () => {
  const run = prepareFixture(),
    release = acquireInstanceLock(path.join(bot, 'runtime/game.sqlite'));
  try {
    const result = run();
    expect(result.status).toBe(1);
    expect(result.stderr).toContain('Preparation refused');
    expect(fs.existsSync(path.join(home, 'npx-called'))).toBe(false);
    expect(fs.readFileSync(path.join(bot, '.env'), 'utf8')).toBe(
      'DATABASE_PATH=./runtime/game.sqlite\n',
    );
  } finally {
    release();
  }
});
it('prepare reaches dependency installation after the old local owner releases its lock', () => {
  const run = prepareFixture(),
    release = acquireInstanceLock(path.join(bot, 'runtime/game.sqlite'));
  release();
  expect(run().status).toBe(42);
  expect(fs.readFileSync(path.join(home, 'npx-called'), 'utf8')).toBe('called');
});
