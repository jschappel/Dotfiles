#!/bin/bash

# Softlink dotfiles to home area
ln -svf $(pwd)/.bashrc $HOME
ln -svf $(pwd)/.bash_aliases $HOME
ln -svf $(pwd)/.bash_code $HOME
ln -svf $(pwd)../git/.gitconfig $HOME
ln -svf $(pwd)/../vim/init.vim $HOME/.nvimrc
ln -svf $(pwd)/../vim/ginit.vim $HOME/.gnvim.rc


# Softlink nvim files
ln -svf $(pwd)/../vim/init.vim $HOME/.config/nvim
ln -svf $(pwd)/../vim/ginit.vim $HOME/.config/nvim
