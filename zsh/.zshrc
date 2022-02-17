#!/bin/sh

export ZDOTDIR=$HOME/.config/zsh
source "$HOME/.config/zsh/.zshrc"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
# Plugins
# source ~/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# zsh-autocomplete Settings
# zstyle ':autocomplete:*' default-context ''
# zstyle ':autocomplete:*' min-input 3
# zstyle ':autocomplete:*' insert-unambiguous yes

# FZF
# TODO update for mac
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# [ -f ~/.fzf/completion.zsh ] && source ~/.fzf/shell/completion.zsh
#[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
#[ -f /usr/share/doc/fzf/examples/completion.zsh ] && source /usr/share/doc/fzf/examples/completion.zsh
#[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ] && source /usr/share/doc/fzf/examples/key-bindings.zsh
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#[ -f $ZDOTDIR/completion/_fnm ] && fpath+="$ZDOTDIR/completion/"
# export FZF_DEFAULT_COMMAND='rg --hidden -l ""'

# Environment variables set everywhere
# export EDITOR="nvim"
# export TERMINAL="iterm"
# export BROWSER="safari"
# export PATH="/opt/homebrew/bin:$PATH"
# export TERM=xterm

# Alias List
# alias lg='lazygit'
# alias ht='sudo htop'
# alias tree='tree -C'
# source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
# source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
# source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# autoload -U +X bashcompinit && bashcompinit
# complete -o nospace -C /opt/homebrew/bin/terraform terraform
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme
