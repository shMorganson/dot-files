#!/bin/bash

# Created By: Justin Sidick
# Created Date: 08/12/21
# Purpose: Place files and folders where they belong to get things up and running again.

# Variables
LOGGEDINUSER="$(/usr/bin/python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");')"
HOMEFOLDER=/Users/$LOGGEDINUSER
LOGFILE=/var/log/dotfileinstall.log
BREWLOC=/opt/homebrew/bin/brew
SETUPDIR=/Users/$LOGGEDINUSER/dot-files/Setup/

# Making the log file.
touch /var/log/dotfileinstall.log

BREWINSTALL(){
# Check to see if we have XCode already
CHECKFORXCODE=$( pkgutil --pkgs | grep com.apple.pkg.CLTools_Executables | wc -l | awk '{ print $1 }' )

# If XCode is missing we will install the Command Line tools only as that's all Homebrew needs
if [[ "$CHECKFORXCODE" != 1 ]]; then
  macos_vers=$(sw_vers -productVersion | awk -F "." '{print $2}')
  # This temporary file prompts the 'softwareupdate' utility to list the Command Line Tools
  touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
  # Verify softwareupdate installs only the latest XCode (Original code from https://github.com/rtrouton/rtrouton_scripts)
  if [[ "$macos_vers" -ge 15 ]]; then
     cmd_line_tools=$(softwareupdate -l | awk '/\*\ Label: Command Line Tools/ { $1=$1;print }' | sed 's/^[[ \t]]*//;s/[[ \t]]*$//;s/*//' | cut -c 9-)
  elif [[ "$macos_vers" -gt 9 ]] && [[ "$macos_vers" -lt 14 ]]; then
     cmd_line_tools=$(softwareupdate -l | awk '/\*\ Command Line Tools/ { $1=$1;print }' | grep "$macos_vers" | sed 's/^[[ \t]]*//;s/[[ \t]]*$//;s/*//' | cut -c 2-)
  elif [[ "$macos_vers" -eq 9 ]]; then
     cmd_line_tools=$(softwareupdate -l | awk '/\*\ Command Line Tools/ { $1=$1;print }' | grep "Mavericks" | sed 's/^[[ \t]]*//;s/[[ \t]]*$//;s/*//' | cut -c 2-)
  fi
  if (( $(grep -c . <<<"$cmd_line_tools") > 1 )); then
     cmd_line_tools_output="$cmd_line_tools"
     cmd_line_tools=$(printf "$cmd_line_tools_output" | tail -1)
  fi

  softwareupdate -i "$cmd_line_tools"

  rm -f /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
  /usr/bin/xcode-select --switch /Library/Developer/CommandLineTools
fi

# Test if Homebrew is installed and install it if it is not
if test ! "$(sudo -u $LOGGEDINUSER which brew)"; then
  # Jamf will have to execute all of the directory creation functions Homebrew normally does so we can bypass the need for sudo
  /bin/chmod u+rwx /usr/local/bin
  /bin/chmod g+rwx /usr/local/bin
  /bin/mkdir -p /usr/local/etc /usr/local/include /usr/local/lib /usr/local/sbin /usr/local/share /usr/local/var /usr/local/opt /usr/local/share/zsh /usr/local/share/zsh/site-functions /usr/local/var/homebrew /usr/local/var/homebrew/linked /usr/local/Cellar /usr/local/Caskroom /usr/local/Homebrew /usr/local/Frameworks
  /bin/chmod 755 /usr/local/share/zsh /usr/local/share/zsh/site-functions
  /bin/chmod g+rwx /usr/local/bin /usr/local/etc /usr/local/include /usr/local/lib /usr/local/sbin /usr/local/share /usr/local/var /usr/local/opt /usr/local/share/zsh /usr/local/share/zsh/site-functions /usr/local/var/homebrew /usr/local/var/homebrew/linked /usr/local/Cellar /usr/local/Caskroom /usr/local/Homebrew /usr/local/Frameworks
  /bin/chmod 755 /usr/local/share/zsh /usr/local/share/zsh/site-functions
  /usr/sbin/chown $LOGGEDINUSER /usr/local/bin /usr/local/etc /usr/local/include /usr/local/lib /usr/local/sbin /usr/local/share /usr/local/var /usr/local/opt /usr/local/share/zsh /usr/local/share/zsh/site-functions /usr/local/var/homebrew /usr/local/var/homebrew/linked /usr/local/Cellar /usr/local/Caskroom /usr/local/Homebrew /usr/local/Frameworks
  /usr/bin/chgrp admin /usr/local/bin /usr/local/etc /usr/local/include /usr/local/lib /usr/local/sbin /usr/local/share /usr/local/var /usr/local/opt /usr/local/share/zsh /usr/local/share/zsh/site-functions /usr/local/var/homebrew /usr/local/var/homebrew/linked /usr/local/Cellar /usr/local/Caskroom /usr/local/Homebrew /usr/local/Frameworks
  /bin/mkdir -p /Users/$LOGGEDINUSER/Library/Caches/Homebrew
  /bin/chmod g+rwx /Users/$LOGGEDINUSER/Library/Caches/Homebrew
  /usr/sbin/chown $LOGGEDINUSER /Users/$LOGGEDINUSER/Library/Caches/Homebrew
  /bin/mkdir -p /Library/Caches/Homebrew
  /bin/chmod g+rwx /Library/Caches/Homebrew
  /usr/sbin/chown $LOGGEDINUSER /Library/Caches/Homebrew


  # Install Homebrew as the currently logged in user
  sudo -H -u $LOGGEDINUSER ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"  </dev/null
  # Disable Homebrew analytics
  sudo -H -iu ${LOGGEDINUSER} /usr/local/bin/brew analytics off  </dev/null
# If Homebrew is already installed then just echo that it is already installed
else
  echo "Homebrew is already installed"
fi
}

# Making sure you have what you need before we move along.
/bin/echo "We are making sure we have what we need to setup everyting." >> $LOGFILE

if [ -f $BREWLOC ]; then
    /bin/echo "Brew is installed!" >> $LOGFILE
    /bin/echo "Continuning the setup." >> $LOGFILE
    /bin/echo "Installing VIM..." >> $LOGFILE
    $BREWLOC install vim
    /bin/echo "Installing Terraform..." >> $LOGFILE
    $BREWLOC install terraform
    /bin/echo "Installing Vim Plug..." >> $LOGFILE
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    /bin/echo "Installing the Vim plugins..." >> $LOGFILE

    /bin/echo "Moving files to where they need to be." >> $LOGFILE
    cp # Move files from git to proper location.
else
    /bin/echo "Brew is not installed." >> $LOGFILE
    /bin/echo "We are trying to install Brew." >> $LOGFILE
    BREWINSTALL
fi
