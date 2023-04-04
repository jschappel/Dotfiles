#!/bin/bash

IS_ZSH=$(echo $SHELL | grep zsh)

genericFiles=(
  .gitconfig
  .gnvimrc
  .gvimrc
  .vimrc
  .nvimrc
)

bashFiles=(
  .bash_code
  .bash_aliases
  .bashrc
)

zshFiles=(
  .zshrc
  .zprofile
  .zsh_aliases
  .oh_my_zsh_config
)
echo "Cleaning up dotfiles"

for file in ${genericFiles[@]}; do
  rm -rfv $HOME/$file
done

if [ -z "${IS_ZSH}" ]; then
  for file in ${bashFiles[@]}; do
    rm -rfv $HOME/$file
  done
else
  for file in ${zshFiles[@]}; do
    rm -rfv $HOME/$file
  done
fi

echo "Done"
