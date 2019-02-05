# Change the way the command prompt looks
# PS1='\e[33;1m\u@\h: \e[31m\W\e[0m\$ '
# PS2="... "

# HOST='\033[02;36m\]\h'; HOST=' '$HOST
TIME='\033[01;31m\]\t \033[01;32m\]'
LOCATION=' \033[01;34m\]`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`'
BRANCH=' \033[00;33m\]$(git_branch)\[\033[00m\]\n\$ '
PS1=$TIME$LOCATION$BRANCH
PS2='\[\033[01;36m\]>'

HISTFILESIZE=1000000000
HISTSIZE=1000000


# if .bash_aliases exists, run it
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi 

# if .bash_functions exists, run it
if [ -f ~/.bash_functions ]; then
	. ~/.bash_functions
fi 
# if .bash_completions exists, run it
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# PATHs

export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/git/bin:/sw/bin:/usr/local/bin:/usr/local:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

# Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
export PATH=/usr/local/bin/python:$PATH
export PATH=/usr/local/bin:$PATH 

# MYSQL
export PATH=$PATH:/usr/local/mysql/bin/mysql
export PATH="/usr/local/bin:$PATH"

# Ruby
export PATH=$PATH:/Users/ray_vazquez/.rvm
export GEM_HOME=$HOME/.gems/
export GEM_PATH=$HOME/.gems/

# NodeJS
export PATH="$HOME/.node_modules_global/bin:$PATH"


# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
