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

export NODE_PATH="/usr/local/lib/node_modules"
export PATH="/usr/local/bin:$PATH"
export EDITOR="emacsclient"
### Add by the Heroku Toolbelt
export PATH=$PATH:/usr/local/heroku/bin

### Add rubies to PATH for scripting
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### Add go env bars
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/Cellar/go/1.10.3/bin:$GOPATH/bin

### Add custom emacs
export PATH=$PATH:/Applications/Emacs.app/Contents/MacOS/bin

# BEGIN ANSIBLE MANAGED BLOCK
source ~/.cw/env.sh
# END ANSIBLE MANAGED BLOCK

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/cw1517/google-cloud-sdk/path.bash.inc' ]; then . '/Users/cw1517/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/cw1517/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/cw1517/google-cloud-sdk/completion.bash.inc'; fi
