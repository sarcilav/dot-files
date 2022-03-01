# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# include bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

export EDITOR="emacsclient"

### Add rubies to PATH for scripting
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi




# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
if [ -f /Users/s.arcila.valenzuela/projects/cw-cli/path.bash.inc ] ; then source /Users/s.arcila.valenzuela/projects/cw-cli/path.bash.inc ; fi # cw-cli

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/s.arcila.valenzuela/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/s.arcila.valenzuela/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/s.arcila.valenzuela/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/s.arcila.valenzuela/Downloads/google-cloud-sdk/completion.bash.inc'; fi

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
