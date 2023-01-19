#!/usr/bin/env bash

# Softlink dotfiles to home area
ln -sf $HEREP/.zshrc $HOME
ln -sf $HEREP/.zprofile $HOME
ln -sf $HERE/bash/.bash_aliases $HOME/.zsh_aliases

if [ "$LINK_WORK" == "true" ]; then
  echo "Adding JOOR aliases"
  ln -sf $HERE/bash/.joor_env $HOME
fi
