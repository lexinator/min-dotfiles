export EDITOR=vi
export LESS="-iX"

autoload -Uz compinit
compinit
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
HISTSIZE=99999999
SAVEHIST=99999999
setopt prompt_subst
precmd() { KC=$(kubectl config current-context) }
RPROMPT='$KC %~'
bindkey -v

alias k='kubectl'
