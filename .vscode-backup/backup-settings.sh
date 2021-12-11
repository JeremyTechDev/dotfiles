#!/bin/bash

cp $HOME/Library/Application\ Support/Code/User/settings.json $HOME/.vscode-backup/settings-backup.json
echo "Settings backed-up ✨"

cp $HOME/Library/Application\ Support/Code/User/keybindings.json $HOME/.vscode-backup/keybindings-backup.json
echo "Keybindings backed-up ✨"

echo "\nDone ✨"
