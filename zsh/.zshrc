autoload -Uz compinit
compinit

autoload -Uz vcs_info # enable vcs_info
precmd () { vcs_info } # always load before displaying the prompt
# zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats '%F{4}%1/ %F{8}on %F{2} %F{2}%b ' # git(main)
setopt prompt_subst

PS1='$vcs_info_msg_0_%F{205}❯ ' # logo /tmp/repo (main) $

# Sources/Plugins
source ~/.zsh/zsh-functions
source ~/.zsh/zsh-aliases
source ~/.zsh/zsh-exports
source ~/.zsh/plugins/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source <(fzf --zsh)

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
#export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' --color=fg:#313131,bg:#f7f7f7,hl:#1b556b --color=fg+:#313131,bg+:#f7f7f7,hl+:#348986 --color=info:#d4a046,prompt:#9cd936,pointer:{10} --color=marker:#9cd936,spinner:#862753,header:#7F7F7F'

[[ "$TERM_PROGRAM" == "CodeEditApp_Terminal" ]] && . "/Applications/CodeEdit.app/Contents/Resources/codeedit_shell_integration.zsh"

[[ "$TERM_PROGRAM" == "CodeEditApp_Terminal" ]] && . "/Users/justin/Library/Developer/Xcode/DerivedData/CodeEdit-eccipnsgefyhyhajoezmqsnbzewk/Build/Products/Debug/CodeEdit.app/Contents/Resources/codeedit_shell_integration.zsh"
