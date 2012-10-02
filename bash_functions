# Truncation code of $PWD
function truncate_pwd {
    local maxlen=30
    local trunc_sym='...'
    local now_pwd=${PWD/$HOME/\~} # Some pattern replace
    if [ ${#now_pwd} -gt $maxlen ]; then
	local offset=$(( ${#now_pwd} - $maxlen ))
	echo "${trunc_sym}${now_pwd:$offset:$maxlen}"
    else
	echo "$now_pwd"
    fi
}

# Is a root git repo???
function is_git {
    local gitrepo=`git status 2>/dev/null`
    if [ ${#gitrepo} -ne 0 ]; then
	echo "git branch `git branch | grep \*`"
    fi
}

# Add to path add the begin or end of the PATH
# Returns: 1 or sets the new PATH
# Called like: add_to_path <directory> (pre|post)
function add_to_path {
    local directory=$1
    local location=$2

    #Validates command line parameters
    if [ -z "$directory" ]; then
	echo "$O:$FUNCNAME: requires a directory to add" >&2
	echo "e.g add_to_path /bin pre" >&2
	return 1
    fi
    
    #Not relative paths
    if [ $(echo $directory | grep '^/') ]; then
	: echo "$O:$FUNCNAME: '$directory' is absolute" >&2
    else
	echo "$O:$FUNCNAME: '$directory' must be an absolute directory" >&2
	return 1
    fi
    
    #Validates presence of the directory
    if [ -d "$directory" ]; then
	: echo "$O:$FUNCNAME: directory exist" >&2
    else
	echo "$O:$FUNCNAME: '$directory' does not exist --- aborting" >&2
	return 1
    fi
    
    #Avoid to repeat
    if [ $(contains "$PATH" "$directory") ]; then
	echo "$O:$FUNCNAME: '$directory' already in \$PATH --- aborting" >&2 
	return 1
    else
	: echo "$O:$FUNCNAME: adding directory to path" >&2
    fi
    
    #position new dir
    case $location in
	pre* ) PATH="$directory:$PATH" ;;
	post* ) PATH="$PATH:$directory" ;;
	* ) PATH="$PATH:$directory" ;;
    esac
    #Clean
    PATH=$(clean_path $PATH)
}

# Remove directory from path
# Returns: sets the new $PATH
# Called like: rm_from_path <directory>
function rm_from_path {
    local directory=$1
    #Remove instances
    PATH=${PATH//$directory}
    #Clean
    PATH=$(clean_path $PATH)
}

# Remove leading/trailing or duplicate ':', remove duplicate entries
# Returns: echos the "cleaned up" path
# Called like: cleaned_path=$(clean_path $PATH)
function clean_path {
    local path=$1
    local newpath
    local directory
    
    # Validates we have something to work with
    [ -z "$path" ] && return 1
    
    #Remove duplicates
    for directory in ${path//:/ }; do
	contains "$newpath" "$directory" && newpath="${newpath}:${directory}"
    done
    
    #Remove any leading ':' 
    #Remove any trailing ':'
    #Remove duplicates ':'
    newpath=$(echo $newpath | sed 's/^:*//; s/:*$//; s/::/:/g')
    
    #Return new path
    echo "$newpath"
}

# Determine if the path contains a given directory
# Return 1 if target is contained within pattern, 0 otherwise
# Called like: contains $PATH $dir
function contains {
    local pattern=":$1:"
    local target=$2
    
    #case sensitive
    case $pattern in
	*:$target:* ) return 1 ;;
        * ) return 0 ;;
    esac
}

# Plays an entire directory recursive with mplayer
function play_that {
    local directory=$1
    find "$directory" -iname *.[wmo][mpg][a3g] -exec mplayer {} +
}
# new tab in the CWD
# the following funtinos only work in mac os x
function nt {
    osascript -e "
     tell application \"System Events\" to tell process \"Terminal\" to keystroke \"t\" using command down
     tell application \"Terminal\" to do script \"cd '$PWD' \" in selected tab of the front window"
 
}

