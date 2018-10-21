
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="avit"

DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"


# ZPlug config
source ~/.zplug/init.zsh

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/yarn", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/httpie", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/asdf", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"

zplug 'themes/avit', from:oh-my-zsh, as:theme



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

