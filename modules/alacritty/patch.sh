#!/bin/sh

# Patch icon to fit in with macOS' aesthetic
cp ./modules/alacritty/alacritty.icns /Applications/Alacritty.app/Contents/Resources/alacritty.icns

# Symlink the Alacritty config file to the home directory
rm -rf $HOME/.alacritty.toml
ln -sw $HOME/.dotfiles/modules/alacritty/alacritty.toml $HOME/.alacritty.toml