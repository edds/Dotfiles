if [ -d '/usr/local/Cellar/macvim/7.3-62/MacVim.app/Contents/MacOS/' ]; then
  alias vi='/usr/local/Cellar/macvim/7.3-62/MacVim.app/Contents/MacOS/Vim'
  alias vim='/usr/local/Cellar/macvim/7.3-62/MacVim.app/Contents/MacOS/Vim'
fi

alias gits='git status'
alias cout='ack --css "\/\*\*\*"'

alias rit='ruby -I test'
g(){ rake routes | grep $1; }

_get_project_names(){
  local cur prev base
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"
  local names=$(for x in `ls -d1 $HOME/Projects/*`; do echo ${x/$HOME\/Projects\//} ; done)
  COMPREPLY=( $(compgen -W "${names}" -- ${cur}) )
}

p(){ cd $HOME/Projects/$1; }
complete -F _get_project_names p

[[ -f "$HOME/.git_completion" ]] && source $HOME/.git_completion
[[ -f "$HOME/.sshhosts" ]] && source $HOME/.sshhosts

[[ $TERM == "screen" ]] && export -p TERM="screen-256color"

alias ta='tmux attach'

export CLICOLOR=1
export COLOR_NC='\033[0m' # No Color
export COLOR_WHITE='\033[1;37m'
export COLOR_BLACK='\033[0;30m'
export COLOR_BLUE='\033[0;34m'
export COLOR_LIGHT_BLUE='\033[1;34m'
export COLOR_GREEN='\033[0;32m'
export COLOR_LIGHT_GREEN='\033[1;32m'
export COLOR_CYAN='\033[0;36m'
export COLOR_LIGHT_CYAN='\033[1;36m'
export COLOR_RED='\033[0;31m'
export COLOR_LIGHT_RED='\033[1;31m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_LIGHT_PURPLE='\033[1;35m'
export COLOR_BROWN='\033[0;33m'
export COLOR_YELLOW='\033[1;33m'
export COLOR_GRAY='\033[0;30m'
export COLOR_LIGHT_GRAY='\033[0;37m'

PS1="\[${COLOR_GREEN}\]\W > \[${COLOR_NC}\]"
echo -ne "${COLOR_LIGHT_GRAY}Uptime: "; uptime

export SVN_EDITOR=vim

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
