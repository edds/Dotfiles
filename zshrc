
# Version control updates
export SVN_EDITOR=vim

# Shortcut for Tmux
alias ta='tmux attach'

# Alias for ag
alias ag='ag --pager "less -R"'

# Auto complete on project names for fast folder switching
autoload -U compinit
compinit

export PROJECT_DIR=~/Projects
_get_project_names(){
  compadd  `find $PROJECT_DIR -maxdepth 1 -mindepth 1 | sed -e "s|$PROJECT_DIR/||g"`
}
p(){ cd $PROJECT_DIR/$1; }
compdef _get_project_names p

# Short prompt to keep things minimal
PROMPT='%F{green}%1d%f %# '

. $(brew --prefix asdf)/asdf.sh
