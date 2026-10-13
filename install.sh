#!/bin/sh
# Symlink `notes` into ~/.local/bin so edits to this repo take effect immediately.
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$HOME/.local/bin"
chmod +x "$dir/notes"
ln -sf "$dir/notes" "$HOME/.local/bin/notes"
echo "installed: ~/.local/bin/notes -> $dir/notes"
case ":$PATH:" in
  *":$HOME/.local/bin:"*) ;;
  *) echo "note: add ~/.local/bin to your PATH" ;;
esac
