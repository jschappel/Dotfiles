#!/usr/bin/env bash

if [[ -v $ISNVIM ]] ; then 
  # Softlink dotfile to nvim config area
  ln -sf $HEREP/init.vim $HOME/.config/nvim
  ln -sf $HEREP/ginit.vim $HOME/.config/nvim
  ln -sf $HEREP/init.vim $HOME/.nvimrc
else
  # Softlink vim dotfiles
  ln -sf $HEREP/.vimrc $HOME/.vimrc
fi

