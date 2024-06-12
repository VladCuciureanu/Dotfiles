<div align="center">
  <div>&nbsp;</div>
  <img src="public/dotfiles-logo.png" width="402"/>
</div>

## Introduction

This repository serves as my way to help me setup and maintain my Mac. It takes the effort out of installing everything manually. Everything needed to install my preferred setup of macOS is detailed in this readme. Feel free to explore, learn and copy parts for your own dotfiles. Enjoy!

## Backup your data

If you're migrating from an existing Mac, you should first make sure to backup all of your existing data. Go through the checklist below to make sure you didn't forget anything before you migrate.

- Did you commit and push any changes/branches to your git repositories?
- Did you remember to save all important documents from non-iCloud directories?
- Did you save all of your work from apps which aren't synced through iCloud?
- Did you remember to export important data from your local database?
- Did you update [mackup](https://github.com/lra/mackup) to the latest version and ran `mackup backup`?

## Setting up your Mac

After backing up your old Mac you may now follow these install instructions to setup a new one.

1. Update macOS to the latest version through system preferences

2. Setup your Git's SSH keys by copying your existing keys into ~/.ssh

3. Clone this repo to `~/.dotfiles` with:

    ```zsh
    git clone --recursive git@github.com:VladCuciureanu/dotfiles.git ~/.dotfiles
    ```

4. Run the installation with:

    ```zsh
    cd ~/.dotfiles && ./fresh.sh
    ```

5. After mackup is synced with your cloud storage, restore preferences by running `mackup restore`

6. Restart your computer to finalize the process

Your Mac is now ready to use!

## License

This source code is is free and unencumbered software released into the public domain. Go wild!
