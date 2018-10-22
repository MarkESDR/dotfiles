
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
zplug "zsh-users/zsh-autosuggestions"
zplug "lukechilds/zsh-nvm"
zplug "mdumitru/fancy-ctrl-z"

zplug 'themes/blinks', from:oh-my-zsh, as:theme

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose


for file in $HOME/.dotfiles/sourced/*; do
   source "$file"
 done



[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Startup asdf
. $HOME/.asdf/asdf.sh

