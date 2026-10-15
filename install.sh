#!/usr/bin/env bash
set -euo pipefail

SKIN_NAME="rain-city-operator"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_FILE="$SCRIPT_DIR/${SKIN_NAME}.yaml"
HERMES_DIR="${HERMES_HOME:-$HOME/.hermes}"
SKINS_DIR="$HERMES_DIR/skins"
TARGET_FILE="$SKINS_DIR/${SKIN_NAME}.yaml"

if [[ ! -f "$SOURCE_FILE" ]]; then
  echo "Missing source skin: $SOURCE_FILE" >&2
  exit 1
fi

mkdir -p "$SKINS_DIR"
cp "$SOURCE_FILE" "$TARGET_FILE"

if command -v hermes >/dev/null 2>&1; then
  hermes config set display.skin "$SKIN_NAME"
  echo "Installed and applied $SKIN_NAME at $TARGET_FILE"
else
  echo "Installed $SKIN_NAME at $TARGET_FILE"
  echo "Hermes CLI was not found on PATH; apply later with:"
  echo "  hermes config set display.skin $SKIN_NAME"
fi
