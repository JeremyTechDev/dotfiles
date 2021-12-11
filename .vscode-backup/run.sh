#!/bin/bash

echo "Installing Visual Studio code extensions and config..."

code -v > /dev/null
if [[ $? -eq 0 ]];then
    read -r -p "👉 Do you want to install your VSC extensions? [y|N]: " configresponse
    if [[ $configresponse =~ ^(y|yes|Y) ]];then
        echo "Installing extensions please wait..."
        sh $HOME/.vscode-backup/install-extensions.sh

        echo "Extensions for VSC have been installed. Please restart your VS Code"
    else
        echo "Skipping extension install";
    fi

    read -r -p "👉 Do you want to overwrite user config? [y|N]: " configresponse
    if [[ $configresponse =~ ^(y|yes|Y) ]];then
        cp $HOME/.vscode-backup/settings-backup.json $HOME/Library/Application\ Support/Code/User/settings.json
        cp $HOME/.vscode-backup/keybindings-backup.json $HOME/Library/Application\ Support/Code/User/keybindings.json

        echo "New user config has been written. Please restart your VSC."
    else
        echo "Skipping user config overwriting.";
    fi
else
    echo "It looks like the command 'code' isn't accessible."
    echo "Please make sure you have Visual Studio Code installed"
    echo "And that you executed this procedure: https://code.visualstudio.com/docs/setup/mac"
fi

echo "Done ✨"
