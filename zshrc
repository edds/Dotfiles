
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

eval "$(/opt/homebrew/bin/brew shellenv)"

. $(brew --prefix asdf)/asdf.sh

export PATH="/opt/homebrew/opt/postgresql@12/bin:$PATH"
export PATH="/opt/homebrew/bin:${PATH}"

source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
export CLOUDSDK_PYTHON=/Users/edds/.asdf/installs/python/3.7.12/bin/python3

export ERL_AFLAGS="-kernel shell_history enabled -kernel shell_history_file_bytes 1024000"

