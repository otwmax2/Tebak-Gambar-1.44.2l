#!/bin/bash
# Run as the Debian bot user. Generate a correctly separated, private launcher.
set -euo pipefail
case "${1:-}" in
  ''|--replace) ;;
  --help) echo 'Usage: bash deploy/termux-launcher.sh [--replace] (inside Debian)'; exit 0 ;;
  *) echo 'Unknown option; use --help.' >&2; exit 2 ;;
esac
[[ $# -le 1 ]] || exit 2
ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd -P)"
TARGET="$HOME/run-tebak-gambar-bot.sh"
[[ ! -L "$TARGET" ]] || { echo 'Refusing symlink launcher.' >&2; exit 1; }
if [[ -e "$TARGET" && "${1:-}" != --replace ]]; then
  echo 'Launcher exists; inspect it, then use --replace to back it up and replace it.' >&2
  exit 1
fi
umask 077
TEMP="$(mktemp "$HOME/.tebak-launcher.XXXXXX")"
trap 'rm -f -- "$TEMP"' EXIT
{
  printf '%s\n' '#!/bin/bash' 'set -euo pipefail'
  printf 'exec /bin/bash %q\n' "$ROOT/deploy/termux-run.sh"
} > "$TEMP"
bash -n "$TEMP"
chmod 700 "$TEMP"
if [[ -e "$TARGET" ]]; then
  BACKUP="$TARGET.bak-$(date -u +%Y%m%dT%H%M%SZ)-$$"
  (set -o noclobber; cat -- "$TARGET" > "$BACKUP")
  chmod 600 "$BACKUP"
  mv -f -- "$TEMP" "$TARGET"
else
  ln -- "$TEMP" "$TARGET"
fi
printf '%s\n' 'Launcher ready: ~/run-tebak-gambar-bot.sh (no bot started).'
