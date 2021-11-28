#!/usr/bin/env bash

# Softlink dotfiles to home area
ln -svf $HEREP/.bashrc $HOME
ln -svf $HEREP/.bash_aliases $HOME
ln -svf $HEREP/.bash_code $HOME
