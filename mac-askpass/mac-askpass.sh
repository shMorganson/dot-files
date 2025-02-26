#!/bin/sh
BIN="/usr/local/bin/askpass"; touch $BIN; chmod 755 $BIN
security add-generic-password -a $USER -s login -T "" -w
echo "#!/bin/sh\\nsecurity find-generic-password -a $USER -s login -w" > $BIN
echo "\\n# Set sudo helper.\\nexport SUDO_ASKPASS=$BIN" >> ~/.${SHELL##/*/}rc
