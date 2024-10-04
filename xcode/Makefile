install:
	@echo "Checking if Xcode tools are installed..."

	@has_xcode="$(xcode-select -p 1>/dev/null;echo $?)"

	@if [[ "$$has_xcode" -ne "0" ]]; then\
		echo "Installing Xcode tools...";\
		xcode-select --install;\
		sudo xcodebuild -license accept;\
	else\
		echo "Xcode tools seem to be installed. Skipping setup...";\
	fi

.PHONY: install
