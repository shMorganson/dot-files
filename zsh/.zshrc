autoload -Uz compinit
compinit

autoload -Uz vcs_info # enable vcs_info

precmd() {
    # As always first run the system so everything is setup correctly.
    vcs_info
    # And then just set PS1, RPS1 and whatever you want to. This $PS1
    # is (as with the other examples above too) just an example of a very
    # basic single-line prompt. See "man zshmisc" for details on how to
    # make this less readable. :-)
    zstyle ':vcs_info:*' formats 'on %F{green}  %F{green}%b%f' # git(main)
    
    if [[ -z ${vcs_info_msg_0_} ]]; then
        # Oh hey, nothing from vcs_info, so we got more space.
        # Let's print a longer part of $PWD...
        PS1=" %F{blue} %5~%/%f %F{166} "
    else
        # vcs_info found something, that needs space. So a shorter $PWD
        # makes sense.
        PS1=" %F{blue} %3~%/%f ${vcs_info_msg_0_} %F{166} "
    fi
}

# Sources/Plugins
source ~/.local/share/nvim/lazy/gruvbox/gruvbox_256palette_osx.sh # better gruvbox color support
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
