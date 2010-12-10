# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

#include personal functions
if [ -f "$HOME/.bash_functions" ]; then
    . "$HOME/.bash_functions"
fi

# include bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

# add_to_path "$HOME/bin" 
# add_to_path "$HOME/.gem/ruby/1.8/bin"
# add_to_path "$HOME/android-sdk/tools"