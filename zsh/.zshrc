# Use powerline
USE_POWERLINE="true"
# Source oh-my-zsh if installed
if [[ -e $HOME/.oh_my_zsh_config ]]; then
  source $HOME/.oh_my_zsh_config
fi

if [ -f $HOME/.zsh_aliases ]; then
  source $HOME/.zsh_aliases
fi


# re-map caplocks to control
setxkbmap -option caps:ctrl_modifier

# add Doom to path
export PATH="$HOME/.config/emacs/bin:$PATH"

alias sourceme='source ~/.zshrc'
colorscript random
fpath+=${ZDOTDIR:-~}/.zsh_functions


# opam configuration
[[ ! -r /home/jschappel/.opam/opam-init/init.zsh ]] || source /home/jschappel/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# ghcup-env
[ -f "/home/jschappel/.ghcup/env" ] && source "/home/jschappel/.ghcup/env"

## pyenv configs
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Created by `pipx` on 2023-01-31 14:36:27
export PATH="$PATH:/home/jschappel/.local/bin"

# nvm stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
