#!/bin/bash

# Created By: Justin Sidick
#
# Variables
LOGGEDINUSER="$(/usr/bin/python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");')"
HOMEFOLDER=/Users/$LOGGEDINUSER
LOGFILE=/var/log/dotfileinstall.log
BREWLOC=/opt/homebrew/bin/brew
SETUPDIR=/Users/$LOGGEDINUSER/dot-files/Setup/

# Making the log file.
touch $HOMEFOLDER/Library/Logs/dotfileinstall.log

# Making sure you have what you need before we move along.
/bin/echo "We are making sure we have what we need to setup everyting." >> $LOGFILE

if [ -f $BREWLOC ]; then
    /bin/echo "Brew is installed!" >> $LOGFILE
    /bin/echo "Continuning the setup." >> $LOGFILE
    /bin/echo "Installing iTerm 2..." >> $LOGFILE
    $BREWLOC install --cask iterm2
    /bin/echo "Installing Node.js..." >> $LOGFILE
    /$BREWLOC install node
    /bin/echo "Installing Oh My ZSH..." >> $LOGFILE
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    sleep 3
    /bin/echo "Installing nvim..." >> $LOGFILE
    $BREWLOC install nvim
    sleep 3
    /bin/echo "Installing Vim Plug..." >> $LOGFILE
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    sleep 3
    /bin/echo "Installing code-minimap so the Minimap plugin works..." >> $LOGFILE
    $BREWLOC  install code-minimap
    sleep 3
    /bin/echo "Installing San Francisco Nerd Font..."
    $BREWLOC tap epk/epk
    $BREWLOC install --cask font-sf-mono-nerd-font
    sleep 3
    /bin/echo "Moving the init.vim to the config directory..." >> $LOGFILE
    cp /Users/$LOGGEDINUSER/dot-files/init.vim /Users/$LOGGEDINUSER/.config/nvim/
    /bin/echo "Running Vim Plug to install Vim Plugins..." >> $LOGFILE
    nvim +'PlugInstall --sync' +qa
    sleep 10
    /bin/echo "Installing the coc.vim extensions for autocompletion." >> $LOGFILE
    nvim + 'CocInstall coc-explorer coc-git coc-python coc-sh coc-xml coc-yaml coc-yank'
    sleep 10
    /bin/echo "Installing Terraform..." >> $LOGFILE
    $BREWLOC install terraform
    sleep 3
    /bin/echo "Moving files to where they need to be." >> $LOGFILE
    cp /Users/$LOGGEDINUSER/dot-files/.zshrc /Users/$LOGGEDINUSER
else
    /bin/echo "We are trying to install Brew." >> $LOGFILE
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    sleep 3
    /bin/echo "Continuning the setup." >> $LOGFILE
    /bin/echo "Installing iTerm 2..." >> $LOGFILE
    $BREWLOC install --cask iterm2
    /bin/echo "Installing Node.js..." >> $LOGFILE
    /$BREWLOC install node
    /bin/echo "Installing Oh My ZSH..." >> $LOGFILE
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    sleep 3
    /bin/echo "Installing nvim..." >> $LOGFILE
    $BREWLOC install nvim
    sleep 3
    /bin/echo "Installing Vim Plug..." >> $LOGFILE
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    sleep 3
    /bin/echo "Installing code-minimap so the Minimap plugin works..." >> $LOGFILE
    $BREWLOC  install code-minimap
    sleep 3
    /bin/echo "Installing San Francisco Nerd Font..."
    $BREWLOC tap epk/epk
    $BREWLOC install --cask font-sf-mono-nerd-font
    sleep 3
    /bin/echo "Moving the init.vim to the config directory..." >> $LOGFILE
    cp /Users/$LOGGEDINUSER/dot-files/init.vim /Users/$LOGGEDINUSER/.config/nvim/
    /bin/echo "Running Vim Plug to install Vim Plugins..." >> $LOGFILE
    nvim +'PlugInstall --sync' +qa
    sleep 10
    /bin/echo "Installing the coc.vim extensions for autocompletion." >> $LOGFILE
    nvim + 'CocInstall coc-explorer coc-git coc-python coc-sh coc-xml coc-yaml coc-yank'
    sleep 10
    /bin/echo "Installing Terraform..." >> $LOGFILE
    $BREWLOC install terraform
    sleep 3
    /bin/echo "Moving files to where they need to be." >> $LOGFILE
    cp /Users/$LOGGEDINUSER/dot-files/.zshrc /Users/$LOGGEDINUSER
fi
