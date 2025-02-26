# How to use mac-askpass.sh

## Purpose
This is used so that you can store your admin password used for `sudo`. It will allow for sudo to be more easily executed if you are running a build in an app like Nova.

### Steps
1. Run mac-askpass.sh
2. Make sure export `SUDO_ASKPASS...` is in the .bashrc, .zshrc file for the shell you'll be in
3. Run command with `sudo -A`
4. GUI password prompt will appear, and password will be remembered!