install:
	@echo "Setting up ZSH..."
	@ln -sfn "$(realpath ./.zshrc)" ~/.zshrc
	@ln -sfn "$(realpath ./.zprofile)" ~/.zprofile
	
	@mkdir -p ~/.zsh
	@ln -sfn "$(realpath ./.zsh/aliases.zsh)" ~/.zsh/aliases.zsh
	@ln -sfn "$(realpath ./.zsh/exports.zsh)" ~/.zsh/exports.zsh
	@ln -sfn "$(realpath ./.zsh/history.zsh)" ~/.zsh/history.zsh
	@ln -sfn "$(realpath ./.zsh/path.zsh)" ~/.zsh/path.zsh
	
	@mkdir -p ~/.config
	@ln -sfn "$(realpath ./.config/starship.toml)" ~/.config/starship.toml

.phony: install
