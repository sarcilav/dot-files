# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

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
