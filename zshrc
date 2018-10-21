# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="avit"

DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  git
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
for file in $HOME/.dotfiles/sourced/*; do
   source "$file"
 done

# User configuration

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

