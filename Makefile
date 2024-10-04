install:
	@echo "Setting up your Mac..."

	@make xcode
	@make brew

	@echo "Stowing dotfiles..."
	@stow zsh

	@echo "Creating a projects directories..."
	@mkdir -p $$HOME/Developer
	@mkdir -p $$HOME/Developer/Personal
	@mkdir -p $$HOME/Developer/Work

	@echo "Setting macOS preferences..."
	@bash -c 'source .macos'

xcode:
	@echo "Checking if Xcode tools are installed..."

	@has_xcode="$(xcode-select -p 1>/dev/null;echo $?)"

	@if [[ "$$has_xcode" -ne "0" ]]; then\
		echo "Installing Xcode tools...";\
		xcode-select --install;\
		sudo xcodebuild -license accept;\
	else\
		echo "Xcode tools seem to be installed. Skipping setup...";\
	fi

brew:
	@echo "Checking if Homebrew is installed..."
	@if test ! $(which brew); then\
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";\
	fi

	@echo "Making sure we’re using the latest Homebrew..."
	@brew update

	@echo "Installing all our dependencies with bundle (See Brewfile)..."
	@brew tap homebrew/bundle

	@echo "Upgrading any already-installed formulae..."
	@brew upgrade

	@echo "Saving Homebrew’s installed location..."
	@BREW_PREFIX=$(brew --prefix)

	@echo "Installing all deps from Brewfile..."
	@brew bundle --file ./Brewfile

	@echo "Removing outdated versions from the cellar..."
	@brew cleanup

.phony: install xcode brew
