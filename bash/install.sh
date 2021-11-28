#!/bin/bash

# Softlink dotfiles to home area
ln -svf $(pwd)/.bashrc $HOME
ln -svf $(pwd)/.bash_aliases $HOME
ln -svf $(pwd)/.bash_code $HOME
ln -svf $(pwd)/init.vim $HOME/.nvimrc
ln -svf $(pwd)/ginit.vim $HOME/.gnvim.rc
ln -svf $(pwd)/gitconfig $HOME/.gitconfig


# Softlink nvim files
ln -svf $(pwd)/init.vim $HOME/.config/nvim
ln -svf $(pwd)/ginit.vim $HOME/.config/nvim
