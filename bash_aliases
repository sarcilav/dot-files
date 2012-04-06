# Some useful aliases.
alias rmb='echo -n "Really clean this directory? [y/n] ";
        read yorn;
        if test "$yorn" = "y"; then
           rm -f \#* *~ .*~ *.bak .*.bak  *.tmp .*.tmp core a.out;
           echo "Cleaned.";
        else
           echo "Not cleaned.";
        fi'
alias h='history'
alias j="jobs -l"
alias l="ls -l "
alias ll="ls -l"
alias pu="pushd"
alias po="popd"
alias grep="grep --color=auto"
alias odesk-dir="cd ~/odesk/"
alias rspec="rspec --color --format doc"
alias emacs="emacsclient"
alias mongodb-start="/Users/sarcilav/mongodb/bin/mongod --dbpath /Users/sarcilav/mongodb/data/db"
alias redis-start="/Users/sarcilav/redis/src/redis-server"
alias weh="cd ~/odesk/weheartit/"
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
