if [ -f ~/.bash_aliases ]; then 
    . ~/.bash_aliases

fi

#Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
PATH="/usr/local/share/python/:$PATH"

