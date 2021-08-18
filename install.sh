#!/bin/bash

# Created By: Justin Sidick

# Variables
LOGGEDINUSER="$(/usr/bin/python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");')"
HOMEFOLDER=/Users/$LOGGEDINUSER
LOGFILE=/var/log/dotfileinstall.log
BREWLOC=/opt/homebrew/bin/brew
SETUPDIR=/Users/$LOGGEDINUSER/dot-files/Setup/

# Making the log file.
touch /var/log/dotfileinstall.log

# Making sure you have what you need before we move along.
/bin/echo "We are making sure we have what we need to setup everyting." >> $LOGFILE

if [ -f $BREWLOC ]; then
    /bin/echo "Brew is installed!" >> $LOGFILE
    /bin/echo "Continuning the setup." >> $LOGFILE
    /bin/echo "Installing Oh My ZSH..." >> $LOGFILE
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    sleep 3
    /bin/echo "Installing VIM..." >> $LOGFILE
    $BREWLOC install vim
    sleep 3
    /bin/echo "Installing Vim Plug..." >> $LOGFILE
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    sleep 3
    /bin/echo "Installing code-minimap so the Minimap plugin works..." >> $LOGFILE
    $BREWLOC  install code-minimap
    sleep 3
    /bin/echo "Installing San Francisco Nerd Font..."
    $BREWLOC tap epk/epk
    sleep 3
    $BREWLOC install --cask font-sf-mono-nerd-font
    sleep 3
    /bin/echo "Running Vim Plug to install Vim Plugins..." >> $LOGFILE
    vim +'PlugInstall --sync' +qa
    sleep 3
    /bin/echo "Moving the .vimrc file to the home directory." >> $LOGFILE
    cp /Users/$LOGGEDINUSER/dot-files/.vimrc /Users/$LOGGEDINUSER
    /bin/echo "Installing Terraform..." >> $LOGFILE
    $BREWLOC install terraform
    /bin/echo "Moving files to where they need to be." >> $LOGFILE
    cp /Users/$LOGGEDINUSER/dot-files/.zshrc /Users/$LOGGEDINUSER
else
    /bin/echo "We are trying to install Brew." >> $LOGFILE
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    sleep 3
    /bin/echo "Continuning the setup." >> $LOGFILE
    /bin/echo "Installing Oh My ZSH..." >> $LOGFILE
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    sleep 3
    /bin/echo "Installing VIM..." >> $LOGFILE
    $BREWLOC install vim
    sleep 3
    /bin/echo "Installing Vim Plug..." >> $LOGFILE
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    sleep 3
    /bin/echo "Installing code-minimap so the Minimap plugin works..." >> $LOGFILE
    $BREWLOC  install code-minimap
    sleep 3
    /bin/echo "Installing San Francisco Nerd Font..."
    $BREWLOC tap epk/epk
    sleep 3
    $BREWLOC install --cask font-sf-mono-nerd-font
    sleep 3
    /bin/echo "Running Vim Plug to install Vim Plugins..." >> $LOGFILE
    vim +'PlugInstall --sync' +qa
    sleep 3
    /bin/echo "Moving the .vimrc file to the home directory." >> $LOGFILE
    cp /Users/$LOGGEDINUSER/dot-files/.vimrc /Users/$LOGGEDINUSER
    /bin/echo "Installing Terraform..." >> $LOGFILE
    $BREWLOC install terraform
    /bin/echo "Moving files to where they need to be." >> $LOGFILE
    cp /Users/$LOGGEDINUSER/dot-files/.zshrc /Users/$LOGGEDINUSER
fi
