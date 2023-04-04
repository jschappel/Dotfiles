#!/usr/bin/env bash

OS=$(uname -s)
HERE="$(cd "$(dirname "$0")" && pwd)"
cd "$HERE"

TARGET_SHELL="zsh"
LINK_WORK=true

projects=(
  bash
  git
  vim
  zsh
)



echo "Linking for shell: ${TARGET_SHELL}"
echo "Detected OS: $OS"
echo "Symlinking files..."
for proj in "${projects[@]}"; do
  if [ "$proj" == "bash" ] && [ "$TARGET_SHELL" != "bash" ]; then
    continue
  elif [ "$proj" == "zsh" ] && [ "$TARGET_SHELL" != "zsh" ]; then
    continue
  else
    echo "------------"
    echo "---$proj---"
    echo "------------"
    HEREP="$HERE/$proj"
    . $HEREP/install.sh
  fi
done

echo "Done"
