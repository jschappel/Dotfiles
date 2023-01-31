# Use powerline
USE_POWERLINE="true"
# Source oh-my-zsh if installed
if [[ -e $HOME/.oh_my_zsh_config ]]; then
  source $HOME/.oh_my_zsh_config
fi

if [ -f $HOME/.zsh_aliases ]; then
  source $HOME/.zsh_aliases
fi

if [ -f $HOME/.joor_env ]; then
  source $HOME/.joor_env
fi

if [ -f $HOME/.secretes ]; then
  source $HOME/.secretes
fi

# opam configuration
[[ ! -r /home/jschappel/.opam/opam-init/init.zsh ]] || source /home/jschappel/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# re-map caplocks to control
setxkbmap -option caps:ctrl_modifier

# add Doom to path
export PATH="$HOME/.emacs.d/bin:$PATH"

alias sourceme='source ~/.zshrc'
