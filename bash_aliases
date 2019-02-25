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
alias rspec="rspec --color --format doc"
#alias emacs="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient"
alias mongodb-start="/Users/sarcilav/mongodb/bin/mongod --dbpath /Users/sarcilav/mongodb/data/db --notablescan"
alias redis-start="redis-server"
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias memcached="/usr/local/opt/memcached/bin/memcached"
alias lol-locale="echo locale = en_US > /Applications/League\ of\ Legends.app/Contents/LOL/RADS/system/locale.cfg"
alias elasticsearch="elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml"

