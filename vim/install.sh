#!/usr/bin/env bash

# Softlink dotfiles to home area
ln -svf $HEREP/init.vim $HOME/.nvimrc
ln -svf $HEREP/ginit.vim $HOME/.gnvimrc

# Softlink dotfile to nvim config area
ln -svf $HEREP/init.vim $HOME/.config/nvim
ln -svf $HEREP/ginit.vim $HOME/.config/nvim
