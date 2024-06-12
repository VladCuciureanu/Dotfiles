#!/bin/sh

# Patch icon to fit in with macOS' aesthetic
cp ./modules/alacritty/alacritty.icns /Applications/Alacritty.app/Contents/Resources/alacritty.icns
killall Dock
