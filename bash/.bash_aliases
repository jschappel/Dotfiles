#!/bin/bash

# Suppress's termianl errors
function suppressErr() {
  $1 $2 2>/dev/null;
}

# Suppress's termianl warnings
function suppressWarn() {
  $1 $2 1>/dev/null;
}

# Commands
alias mv='mv -vi'
alias rm='rm -vi'
alias cp='cp -vi'

# Editors
alias vi='nvim'
alias pdf='xdg-open'
alias gvim='suppressErr nvim-qt'
alias vim='nvim'

#Git aliases
alias gc='git commit'

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
alias ntw='gnome-terminal'
alias xtw='xterm -fa Monospace -fs 12 &'

# Internet Browser
alias weather='curl wttr.in'
alias ff="$HOME/Github/Dotfiles/bash/firefox_search.sh -s"
alias ffw="$HOME/Github/Dotfiles/bash/firefox_search.sh -w"

# Directories
alias ghd='cd ~/Github;pwd'
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
alias dana='cd ~/Dana;pwd'

# Make & CMake Commands
alias maket='make test -C'
alias cmakeb='cmake --build'
alias ctest='ctest -VV'

# Games
alias runelite='java -jar /usr/local/bin/RuneLite.jar'


# Other
alias open='suppressErr xdg-open '
alias myaddress='echo "8460 Limekiln Pk 19095 PA"'
alias sourceme='source ~/.bashrc'
alias updateall='sudo apt update && sudo apt upgrade -y'
