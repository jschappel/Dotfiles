#!/usr/bin/env bash

if [[ -v $ISNVIM ]] ; then 
  # Softlink dotfile to nvim config area
  ln -sfv $HEREP/init.vim $HOME/.config/nvim
  ln -sfv $HEREP/ginit.vim $HOME/.config/nvim
  ln -sfv $HEREP/init.vim $HOME/.nvimrc
else
  # Softlink vim dotfiles
  ln -sfv $HEREP/.vimrc $HOME/.vimrc
fi

