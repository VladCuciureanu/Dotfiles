#!/bin/sh

echo "Setting up your Mac..."

# Install Xcode tools
./install-xcode.sh

# Setup Brew
./brew-routine.sh

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -sw $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc

# Create a projects directories
mkdir -p $HOME/Developer
mkdir -p $HOME/Developer/Personal
mkdir -p $HOME/Developer/Work

# Set macOS preferences - we will run this last because this will reload the shell
source ./.macos
