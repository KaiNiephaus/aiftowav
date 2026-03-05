#!/usr/bin/env bash
set -euo pipefail

# Install aif2wav to a location on your PATH.

if [[ ! -f "./aif2wav" ]]; then
  echo "Error: run this from the repo folder (aif2wav file not found)."
  exit 1
fi

# Pick install target (Apple Silicon Homebrew path first, then Intel/default)
if [[ -d "/opt/homebrew/bin" ]]; then
  DEST="/opt/homebrew/bin/aif2wav"
else
  DEST="/usr/local/bin/aif2wav"
fi

echo "Installing to: $DEST"
sudo cp "./aif2wav" "$DEST"
sudo chmod +x "$DEST"

echo "Done. Try:"
echo "  aif2wav --help"
