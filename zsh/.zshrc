autoload -Uz compinit
compinit

autoload -Uz vcs_info # enable vcs_info
precmd () { vcs_info } # always load before displaying the prompt
# zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats 'on %F{70}⇵ %F{70}%b ' # git(main)
setopt prompt_subst

PS1='%F{blue} %F{blue}%/%f $vcs_info_msg_0_%F{205}→ ' # logo /tmp/repo (main) $

# Sources/Plugins
# source ~/.local/share/nvim/lazy/gruvbox/gruvbox_256palette_osx.sh # better gruvbox color support
source ~/.zsh/zsh-functions
source ~/.zsh/zsh-aliases
source ~/.zsh/zsh-exports
source ~/.zsh/plugins/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Completion Plugins
fpath=(~/.zsh/plugins/zsh-user/zsh-completions/src/ $fpath)
fpath=(~/.zsh/plugins/sudosubin/zsh-github-cli/src/ $fpath)

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# Allow aproximation when completing
zstyle ':completion:::::' completer _complete _approximate
zstyle ':completion:*:approximate:*' max-errors 2
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # better completion. 

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
#   --color=fg:#ebdbb2,bg:#282828,hl:#b16286
#   --color=fg+:#689d6a,bg+:#32302f,hl+:#d3869b
#   --color=info:#d65d0e,prompt:#458588,pointer:#fe8019
#   --color=marker:#8ec07c,spinner:#cc241d,header:#fabd2f'

