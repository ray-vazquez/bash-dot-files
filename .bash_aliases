alias ll='ls -lahGgc'
alias le='less'
alias hy='history'

# editing and sourcing bash dot files
alias epb='subl ~/.bash_profile'
alias spb='source ~/.bash_profile'

alias eba='subl ~/.bash_aliases'
alias sba='source ~/.bash_aliases'

alias ebf='subl ~/.bash_functions'
alias sbf='source ~/.bash_functions'

alias ebrc='subl ~/.bashrc'
alias sbrc='source ~/.bashrc'

# python
alias p='python -q'
alias py3='python3 -q'
alias ipy='ipython'
alias senv='source bin/activate'
alias denv='deactivate'

# navigation
alias cd..='cd ../'                         
alias ..='cd ../'                           
alias ...='cd ../../'                       
alias .3='cd ../../../'                     
alias .4='cd ../../../../'                  
alias .5='cd ../../../../../'               
alias .6='cd ../../../../../../'

# path: Echo all executable Paths
alias path='echo -e ${PATH//:/\\n}'

