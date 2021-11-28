#!/bin/zsh

# Softlink dotfiles to home area
ln -svf $(pwd)/.zshrc $HOME
ln -svf $(pwd)/.zsh_aliases $HOME
ln -svf $(pwd)/../git/.gitconfig $HOME
ln -svf $(pwd)/../vim/init.vim $HOME/.nvimrc
ln -svf $(pwd)/../vim/ginit.vim $HOME/.gnvimrc


# Softlink nvim files
ln -svf $(pwd)/../vim/init.vim $HOME/.config/nvim
ln -svf $(pwd)/../vim/ginit.vim $HOME/.config/nvim
