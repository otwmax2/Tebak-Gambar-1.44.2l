#!/bin/bash
# Run INSIDE Debian/proot, never native Android Termux. No automatic installs.
set -euo pipefail
case "${1:-run}" in
  --help) printf '%s\n' 'Usage: bash deploy/termux-run.sh [--check | --check-offline]' ; exit 0 ;;
  run|--check|--check-offline) ;;
  *) printf '%s\n' 'Unknown option; use --help.' >&2; exit 2 ;;
esac
if [[ $# -gt 1 ]]; then exit 2; fi
ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
export NVM_DIR="${NVM_DIR:-$HOME/.nvm}"
if [[ -s "$NVM_DIR/nvm.sh" ]]; then
  set +u
  . "$NVM_DIR/nvm.sh"
  nvm use 22 >/dev/null
  set -u
fi
cd "$ROOT"
node -e "const [a,b]=process.versions.node.split('.').map(Number);if(process.platform!=='linux'||a<22||(a===22&&b<13))process.exit(1)" || { echo 'Use Debian/Linux Node 22.13+; not native Android.' >&2; exit 1; }
[[ -f dist/src/index.js && -f dist/scripts/doctor.js ]] || { echo 'Build missing: run npm run build inside bot/.' >&2; exit 1; }
case "${1:-run}" in
  --check) exec node dist/scripts/doctor.js ;;
  --check-offline) exec node dist/scripts/doctor.js --offline ;;
  *) exec node dist/src/index.js ;;
esac
