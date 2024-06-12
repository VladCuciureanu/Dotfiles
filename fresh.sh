#!/bin/sh

echo "Setting up your Mac..."

# Install Xcode tools
has_xcode="$(xcode-select -p 1>/dev/null;echo $?)"
if [[ "$has_xcode" -ne "0" ]]; then
  echo "Installing Xcode tools"
  xcode-select --install
  sudo xcodebuild -license accept
else
  echo "Xcode tools seem to be installed. Skipping setup..."
fi

# Setup Brew
./brew.sh

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -sw $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc


# Run patch scripts
./modules/alacritty/patch.sh

# Create a projects directories
mkdir -p $HOME/Developer
mkdir -p $HOME/Developer/Personal
mkdir -p $HOME/Developer/Work

# Setup NVM
mkdir -p $HOME/.nvm

# Symlink the Mackup config file to the home directory
rm -rf $HOME/.mackup.cfg
ln -sw $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# Set macOS preferences - we will run this last because this will reload the shell
# source ./.macos
