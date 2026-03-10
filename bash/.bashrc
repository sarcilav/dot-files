# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return
export SUDO_EDITOR="$EDITOR"
export BAT_THEME=ansi
# History control
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=32768
HISTFILESIZE="${HISTSIZE}"

# Autocompletion
if [[ ! -v BASH_COMPLETION_VERSINFO && -f /usr/share/bash-completion/bash_completion ]]; then
  source /usr/share/bash-completion/bash_completion
fi

# Ensure command hashing is off for mise
set +h

source ~/dot-files/bash_aliases
source ~/dot-files/bash_functions
if command -v mise &> /dev/null; then
  eval "$(mise activate bash)"
fi

if command -v starship &> /dev/null; then
  eval "$(starship init bash)"
fi

if command -v zoxide &> /dev/null; then
  eval "$(zoxide init bash)"
fi

if command -v try &> /dev/null; then
  eval "$(SHELL=/bin/bash try init ~/Work/tries)"
fi

if command -v fzf &> /dev/null; then
  if [[ -f /usr/share/fzf/completion.bash ]]; then
    source /usr/share/fzf/completion.bash
  fi
  if [[ -f /usr/share/fzf/key-bindings.bash ]]; then
    source /usr/share/fzf/key-bindings.bash
  fi
fi

[[ $- == *i* ]] && bind -f ~/dot-files/inputrc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'

. "$HOME/.local/share/../bin/env"

# uv
export PATH="/home/sarcilav/.local/share/../bin:$PATH"

function turn_on_display {
  hyprctl keyword monitor "$1, enable"
}

function turn_off_display {
  hyprctl keyword monitor "$1, disable"
}
