export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

source ~/.git-prompt.sh
export PS1="\[\033[36m\]$USER\[\033[m\]:\[\033[33;1m\]\w\[\033[32m\]\$(__git_ps1)\[\033[m\]:$ "
