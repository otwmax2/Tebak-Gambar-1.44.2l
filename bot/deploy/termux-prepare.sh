#!/bin/bash
# Explicit preparation INSIDE Debian after installing Node via NVM. No Telegram API.
set -euo pipefail
if [[ "${1:-}" == --help ]]; then echo 'Usage: bash deploy/termux-prepare.sh (Debian Node 22.13+; network installs npm dependencies; preserves .env/runtime)'; exit 0; fi
[[ $# -eq 0 ]] || exit 2
ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"
node -e "const [a,b]=process.versions.node.split('.').map(Number);if(process.platform!=='linux'||a<22||(a===22&&b<13))process.exit(1)" || { echo 'First enter Debian and activate Node 22.13+.' >&2; exit 1; }
[[ ! -L .env && ! -L runtime ]] || { echo 'Refusing symlink .env/runtime. Review paths manually.' >&2; exit 1; }
printf '%s\n' 'Stop any existing bot and secure a backup before preparing an upgrade.'
umask 077
if [[ ! -e .env ]]; then (set -o noclobber; cat .env.example > .env); fi
chmod 600 .env
mkdir -p runtime
chmod 700 runtime
npx --yes npm@11.6.0 ci
npm run typecheck
npm run assets:verify
npm run test:mobile
npm run build
npm run doctor:offline
printf '%s\n' 'Prepared locally. Edit .env privately, run doctor --telegram on your device, then termux-run.sh. No live Telegram test was performed.'
