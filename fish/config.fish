setxkbmap -option caps:ctrl_modifier
xdg-settings set default-web-browser firefox.desktop

source ~/.bash_aliases

alias sourceme="source ~/.config/fish/config.fish"
alias aliases="functions | cat"
alias dkill="docker kill (docker ps -q)"
alias pytest="racket /home/joshua/Github/Dotfiles/scripts/racket/pytester.rkt"

set --export EDITOR vim
set --export CABAL cabal
#set --export USE_CONTAINERS atlas backend backend.python backend.python.grpc redis postgres www web.php traefik hyperion

# Ocaml stuff
eval (opam env)
set -gx MANPATH $MANPATH '/usr/share/man'

if test -e ~/.env
  source ~/.env
end

if test -e ~/.joor_env
  bass source ~/.joor_env
end


# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end



# Adapted from default fish_prompt.
function fish_prompt --description 'Write out the prompt'
  set -g __fish_prompt_status $status

  if not set -q __fish_prompt_normal
    set -g __fish_prompt_normal (set_color normal)
  end

  switch $USER
  case root
    if not set -q __fish_prompt_cwd
      if set -q fish_color_cwd_root
        set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
      else
        set -g __fish_prompt_cwd (set_color $fish_color_cwd)
      end
    end

  case '*'
    if not set -q __fish_prompt_cwd
      set -g __fish_prompt_cwd (set_color $fish_color_cwd)
    end
  end

  if test "$__fish_prompt_status" -eq 0
    set -g __fish_prompt_status_string ""
  else
    set -g __fish_prompt_status_string (printf ' %d' "$__fish_prompt_status")
  end

  # Print prompt below
  set_color brblack
	#echo -n "["(date "+%H:%M")"] "
  echo -n "Jschappel"
  printf '%s%s%s%s%s' \
    "$__fish_prompt_cwd" \
    (prompt_pwd) \
    (set_color $fish_color_error) \
    "$__fish_prompt_status_string" \
    "$__fish_prompt_normal"
  set_color red
  echo -n "> "
  set_color normal
end

# Adapted from default prompt_pwd.
function prompt_pwd --description '$PWD shortened'
  if test "$PWD" = "$HOME"
    set_color yellow
    echo '~'
  else
  set_color yellow
    printf "%s" (echo "$PWD" | sed -e "s|^$HOME|~|" -e 's-/\(\.\{0,1\}[^/]\)\([^/]*\)-/\1-g')
    echo "$PWD" | sed -e 's-.*/\.\{0,1\}[^/]\([^/]*$\)-\1-'
  end
end


# Source additional man files for autocomplete
kubectl completion fish | source
