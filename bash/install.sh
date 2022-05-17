#!/usr/bin/env bash

# Softlink dotfiles to home area
ln -sf $HEREP/.bashrc $HOME
ln -sf $HEREP/.bash_aliases $HOME
ln -sf $HEREP/.bash_code $HOME
ln -sf $HEREP/.joor_env $HOME

#ln -sf $HEREP/.bash_commands $HOME
