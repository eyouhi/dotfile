# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e


autoload -U compinit && compinit
autoload -U colors && colors

# Custom function example
mkcd() {
  mkdir -p "$1"
  cd "$1"
}


setopt auto_cd
setopt auto_pushd

# General
alias l='eza -F'
alias ls='eza'
alias ll='eza -hal'
alias la='eza -A'

# Git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gco='git checkout'
alias gb='git branch'
alias gd='git diff'
alias gcm='git commit -m'

# Navigation
alias ..='z ..'
alias ...='z ../..'
alias ....='z ../../..'

# System
alias update='sudo apt-get update && sudo apt-get upgrade'
alias cls='clear'

alias vim='nvim'
alias nv='nvim'
alias grep='rg'

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

. "$HOME/.profile"
. "$HOME/.env"

# fnm
eval "`fnm env`"

# starship
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"

# inshellisense
eval "$(is init zsh)"


# see https://nvchad.com/docs/quickstart/install/