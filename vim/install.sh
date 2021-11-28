#!/usr/bin/env bash

# Softlink dotfiles to home area
ln -sf $HEREP/init.vim $HOME/.nvimrc
ln -sf $HEREP/ginit.vim $HOME/.gnvimrc

# Softlink dotfile to nvim config area
ln -sf $HEREP/init.vim $HOME/.config/nvim
ln -sf $HEREP/ginit.vim $HOME/.config/nvim
