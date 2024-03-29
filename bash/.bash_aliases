#!/usr/bin/env bash

# Commands
alias mv='mv -vi'
alias rm='rm -vi'
alias cp='cp -vi'
alias ll='exa -al --color=always --group-directories-first'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#docker
alias dkill='docker kill  $(docker ps -q)'

# Editors
alias vi='nvim'
alias vim='nvim'
alias pdf='xdg-open'

#Git aliases
alias gc='git commit -v'
alias ga='git commit --amend'
alias gp='git commit --patch'

#GCC
alias gccc='gcc -Wall -std=c++17'
alias g++c='g++ -Wall -std=c++17'

# Clang
alias clangf='clang-format -i -style=Google'
alias clangc='clang++ -Wall -std=c++17'

# Python
alias python='python3'

#Terminals
alias gterm='gnome-terminal'
alias gtab='gnome-terminal --tab'
alias ntw='alacritty'
alias xtw='xterm -fa Monospace -fs 12 &'

# Internet Browser
alias weather='curl wttr.in'
alias ff="$HOME/Github/Dotfiles/bash/firefox_search.sh -s"
alias ffw="$HOME/Github/Dotfiles/bash/firefox_search.sh -w"

# Directories
alias repos='cd ~/Github;pwd'
alias rsd='cd ~/Documents/Rust;pwd'
alias hsd='cd ~/Documents/Haskell;pwd'
alias jsd='cd ~/Documents/Javascript;pwd'
alias rkd='cd ~/Documents/Racket;pwd'
alias rkd='cd ~/Documents/Racket;pwd'
alias cpd='cd ~/Documents/Cpp;pwd'
alias ocd='cd ~/Documents/OCaml;pwd'
alias smd='cd ~/Documents/SML;pwd'
alias greend='cd ~/Github/Green;pwd'
alias greenc='cd ~/Github/Green/Green-Compiler-Repository-GitHub;pwd'

# Make & CMake Commands
alias maket='make test -C'
alias cmakeb='cmake --build'
alias ctest='ctest -VV'

# Other
alias open='xdg-open '
alias myaddress='echo "100 N Park Rd Apt 1268, Wyomissing, PA 19610"'
alias updateall='sudo apt update && sudo apt upgrade -y'
