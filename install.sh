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
  fish
)

echo "Symlinking files..."
for proj in "${projects[@]}"; do
  if [ "$proj" == "bash" ] && [ "$OS" == "Darwin" ]; then # MAC
    continue
  elif [ "$proj" == "fish" ] && [ "$OS" == "Darwin" ]; then # MAC
    continue
  elif [ "$proj" == "zsh" ] && [ "$OS" == "Linux" ]; then
    continue
  else
    #Determine if using fish or bash
    if [ "$proj" == "bash" ] && [ "$SHELL" == "/usr/bin/fish" ]; then
      echo "Skipping bash"
      continue
    elif [ "$proj" == "fish" ] && [ "$SHELL" == "/usr/bin/bash" ]; then
      echo "Skipping fish"
      continue
    fi

    echo "  $proj"
    HEREP="$HERE/$proj"
    . $HEREP/install.sh
  fi
done

echo "Done"
