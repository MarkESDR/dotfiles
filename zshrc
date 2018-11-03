
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

# load zgen
source "${HOME}/.zgen/zgen.zsh"

# ZPlug config
source ~/.zplug/init.zsh
if ! zgen saved; then
  echo "Creating a zgen save"

  zgen oh-my-zsh

  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/yarn
  zgen oh-my-zsh plugins/sudo
  zgen oh-my-zsh plugins/npm
  zgen oh-my-zsh plugins/httpie
  zgen oh-my-zsh plugins/command-not-found
  zgen oh-my-zsh plugins/asdf
  zgen oh-my-zsh plugins/dirhistory
  zgen oh-my-zsh plugins/mix

  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-autosuggestions
  zgen load lukechilds/zsh-nvm
  zgen load mdumitru/fancy-ctrl-z
  zgen load djui/alias-tips

  zgen oh-my-zsh themes/blinks

  zgen save
fi


for file in $HOME/.dotfiles/sourced/*; do
   source "$file"
 done


# Ensure C-left and C-right work properly
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word



[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Startup asdf
. $HOME/.asdf/asdf.sh

