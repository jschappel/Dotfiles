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

for proj in "${projects[@]}"; do
  if [ "$proj" == "bash" ] && [ "$OS" == "Darwin" ]; then # MAC
    echo "-Skipping bash linking..."
  elif [ "$proj" == "zsh" ] && [ "$OS" == "Linux" ]; then
    echo "-Skipping zsh linking..."
  else
    echo "Installing: $proj"
    HEREP="$HERE/$proj"
    . $HEREP/install.sh
  fi
done

echo "Done"
