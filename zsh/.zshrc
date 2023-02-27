autoload -Uz compinit
compinit

autoload -Uz vcs_info # enable vcs_info
precmd () { vcs_info } # always load before displaying the prompt
zstyle ':vcs_info:*' formats '%s(%F{green}%b%f)' # git(main)
setopt prompt_subst

PS1=' %F{blue}%/%f $vcs_info_msg_0_ $ ' # logo /tmp/repo (main) $

# Sources/Plugins
source ~/.local/share/nvim/lazy/gruvbox/gruvbox_256palette.sh
source ~/.zsh/zsh-functions
source ~/.zsh/zsh-aliases
source ~/.zsh/zsh-exports
source ~/.zsh/plugins/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Completion Plugins
fpath=(~/.zsh/plugins/zsh-user/zsh-completions/src/ $fpath)
fpath=(~/.zsh/plugins/sudosubin/zsh-github-cli/src/ $fpath)

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # better completion. 

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
