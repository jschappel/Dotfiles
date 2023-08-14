#!/usr/bin/env bash
ISNVIM=true

if [[ -v $ISNVIM ]] ; then 
  # Softlink dotfile to nvim config area
  ln -sfv $HEREP/init.vim $HOME/.config/nvim
else
  # Softlink vim dotfiles
  ln -sfv $HEREP/.vimrc $HOME/.vimrc
fi

