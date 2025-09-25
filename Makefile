install:
	@echo "Setting up your Mac..."

	@make xcode
	@make brew
	@make zsh
	@make neovim

	@echo "Creating a projects directories..."
	@mkdir -p $$HOME/Developer
	@mkdir -p $$HOME/Developer/Personal
	@mkdir -p $$HOME/Developer/Work

	@make macos

xcode:
	cd xcode; make install

brew:
	cd brew; make install

macos:
	cd macos; make install

zsh:
	cd zsh; make install

neovim:
	cd neovim; make install

.PHONY: install xcode brew macos zsh
