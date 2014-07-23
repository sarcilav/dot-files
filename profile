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

export EDITOR="emacsclient"
### Add by the Heroku Toolbelt
add_to_path "/usr/local/heroku/bin"

### Add rubies to PATH for scripting
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### Add go env bars
export GOPATH=$HOME/go
#export PATH=$PATH:/usr/local/Cellar/go/1.3/libexec/bin:$GOPATH/bin
add_to_path "/usr/local/Cellar/go/1.3/libexec/bin"
add_to_path "$GOPATH/bin"