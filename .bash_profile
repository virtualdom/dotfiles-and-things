export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

source ~/.git-prompt.sh
export PS1="\n\$(date +"%T"):\[\033[36m\]\[\033[m\]:\[\033[33;1m\]\w\[\033[32m\]\$(__git_ps1)\[\033[m\]\n$ "
