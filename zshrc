
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="avit"

DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  git
  yarn
  sudo
  npm
  httpie
  command-not-found
  asdf
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

export PATH=$PATH:/usr/local/go/bin
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Android stuff
export ANDROID_HOME=$HOME/Android/Sdk
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Startup asdf
. $HOME/.asdf/asdf.sh

