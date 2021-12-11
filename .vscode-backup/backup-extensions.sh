#!/bin/bash

EXTENSIONS_FILE="$HOME/.vscode-backup/install-extensions.sh"

code --list-extensions | xargs -L 1 echo code --install-extension > $EXTENSIONS_FILE 

echo "#\!/bin/bash\n\n$(cat  $EXTENSIONS_FILE)" > $EXTENSIONS_FILE 

echo "Done ✨"
