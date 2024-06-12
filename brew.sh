#!/bin/sh

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install all deps from Brewfile
brew bundle --file ./Brewfile

# Remove outdated versions from the cellar.
brew cleanup