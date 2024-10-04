#!/bin/sh

echo "Checking if Homebrew is installed..."
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Making sure we’re using the latest Homebrew..."
brew update

echo "Installing all our dependencies with bundle (See Brewfile)..."
brew tap homebrew/bundle

echo "Upgrading any already-installed formulae..."
brew upgrade

echo "Saving Homebrew’s installed location..."
BREW_PREFIX=$(brew --prefix)

echo "Installing all deps from Brewfile..."
brew bundle --file ./Brewfile

echo "Removing outdated versions from the cellar..."
brew cleanup
