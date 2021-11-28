#!/usr/bin/env bash

OS=$(uname -s)
HERE="$(cd "$(dirname "$0")" && pwd)"
cd "$HERE"

echo "Detected OS: $OS"

projects=(
  bash
  git
  vim
  zsh
)

echo "Symlinking files..."
for proj in "${projects[@]}"; do
  if [ "$proj" == "bash" ] && [ "$OS" == "Darwin" ]; then # MAC
    continue
  elif [ "$proj" == "zsh" ] && [ "$OS" == "Linux" ]; then
    continue
  else
    echo "  $proj"
    HEREP="$HERE/$proj"
    . $HEREP/install.sh
  fi
done

echo "Done"
