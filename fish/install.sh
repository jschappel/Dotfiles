#!/bin/sh

FISH_DIR="$HOME/.config/fish/"


# Softlink dotfiles to home area
ln -sf $HEREP/config.fish $HOME/.fishrc
ln -sf $HEREP/config.fish $HOME/.config/fish/config.fish

#soft link some stuff from the bash dir
ln -sf $HERE/bash/.joor_env $HOME
ln -sf $HERE/bash/.bash_aliases $HOME


# install extra fish functions
ln -sf $HEREP/nvm.fish $FISH_DIR/functions
