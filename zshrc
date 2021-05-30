export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export SAVEHIST=1000000000
setopt HIST_FIND_NO_DUPS

DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

for file in $HOME/.dotfiles/sourced/*; do
   source "$file"
 done


# Ensure C-left and C-right work properly
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word



[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# OPAM configuration
. $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

setopt promptsubst

zinit snippet OMZ::plugins/git/git.plugin.zsh
zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh
zinit snippet OMZ::plugins/npm
zinit snippet OMZ::plugins/command-not-found
# asfd completions give me an error for some reason lmao
# zinit snippet OMZ::plugins/asdf
zinit snippet OMZ::plugins/ssh-agent

zinit ice blockf
zinit light zsh-users/zsh-completions

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light lukechilds/zsh-nvm
zinit light mdumitru/fancy-ctrl-z
zinit light MichaelAquilina/zsh-you-should-use
zinit light gusaiani/elixir-oh-my-zsh
zinit light zpm-zsh/ls

zinit light mafredri/zsh-async
zinit light sindresorhus/pure

