#!/bin/bash

# Created By: Justin Sidick
# Created Date: 08/12/21
# Purpose: Place files and folders where they belong to get things up and running again.

# Variables
LOGGEDINUSER="$(/usr/bin/python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");')"
HOMEFOLDER=/Users/$LOGGEDINUSER
LOGFILE=/var/log/dotfileinstall.log
BREWLOC=/opt/homebrew
CHECKFORXCODE=$( pkgutil --pkgs | grep com.apple.pkg.CLTools_Executables | wc -l | awk '{ print $1 }' )


# Making the log file.
touch /var/log/dotfileinstall.log

# Making sure you have what you need before we move along.
/bin/echo "We are making sure we have what we need to setup everyting." >> $LOGFILE

if [ -d $BREWLOC ]; then
    /bin/echo "Brew is installed!" >> $LOGFILE
    /bin/echo "Continuning the setup." >> $LOGFILE
    cp # Move files from git to proper location.
else
    /bin/echo "Brew is not installed." >> $LOGFILE
    /bin/echo "We are trying to install Brew." >> $LOGFILE
    # Check to see if we have Xcode already.
    /bin/echo "Check to see if we have Xcode already." >> $LOGFILE
# If XCode is missing we will install the Command Line tools only as that's all Homebrew needs
    if [[ "$checkForXcode" != 1 ]]; then
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
fi
