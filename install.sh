#!/bin/bash

# Created By: Justin Sidick
# Created Date: 08/12/21
# Purpose: Place files and folders where they belong to get things up and running again.

# Variables
LOGGEDINUSER=" "
HOMEFOLDER=" "
LOGFILE=/var/log/dotfileinstall.log
BREWLOC=/opt/homebrew

# Making the log file.
touch /var/log/dotfileinstall.log

# Making sure you have what you need before we move along.
/bin/echo "We are making sure we have what we need to setup everyting." >> $LOGFILE

if [ -d $BREWLOC ]; then
    /bin/echo "Brew is installed! :-)" >> $LOGFILE
    cp # Move files from git to proper location.
else
    /bin/echo "Brew is not installed. :-(" >> $LOGFILE
    # Install Brew
fi
