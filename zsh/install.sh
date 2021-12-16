#!/usr/bin/env bash

IS_JOOR=1

# Softlink dotfiles to home area
ln -sf $HEREP/.zshrc $HOME
ln -sf $HEREP/.zsh_aliases $HOME
ln -sf $HEREP/.zprofile $HOME

if [ "$IS_JOOR" == "1" ]; then
  echo "Adding JOOR aliases"
  ln -sf $HEREP/.joor_env $HOME
fi
