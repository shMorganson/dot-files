# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Setup and load complettion plugins.
autoload -Uz compinit
compinit

# FZF
# TODO update for mac
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#[ -f ~/.fzf/completion.zsh ] && source ~/.fzf/shell/completion.zsh
#[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
#[ -f /usr/share/doc/fzf/examples/completion.zsh ] && source /usr/share/doc/fzf/examples/completion.zsh
#[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ] && source /usr/share/doc/fzf/examples/key-bindings.zsh
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_COMMAND='rg --hidden -l ""'

# Sources/Plugins
# source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-functions
source ~/.zsh/zsh-aliases
source ~/.zsh/zsh-exports
source ~/.zsh/plugins/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Completion Plugins
fpath=(~/.zsh/plugins/zsh-user/zsh-completions/src/ $fpath)
fpath=(~/.zsh/plugins/sudosubin/zsh-github-cli/src/ $fpath)

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
