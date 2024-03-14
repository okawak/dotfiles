# setup for the MacOS

When you get a new Mac PC, you can start from these commands!

## general setting

From default terminal application

```shell
# install Xcode command line tool
xcode-select —install

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# activate the homebrew and install important application
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install --cask xquartz
brew install --cask arc

# ssh configuration
cd $HOME
mkdir .ssh
cd .ssh
ssh-keygen -t ed25519 -C "your_email@example.com"
vi config
```

This is the example of the "~/.ssh/config" setting for Github

```conf
Host github.com
  IdentityFile ~/.ssh/id_ed25519
  User git
```

Then please register the SSH key to your github account.

```shell
# yadm preparation
sudo vi /etc/zshenv

# this is the contents of /etc/zshenv
# cat /etc/zshenv
export ZDOTDIR="${HOME}/.config/zsh"

# setting the dotfiles of okawak!
yadm clone git@github.com:okawak/dotfiles.git

# please run the bootstrap script
```

Then, please restart the zsh!

## useful package

```shell
# for zim exa module (now exa is not supported, so need to install eza)
brew install eza

# for zim utility module
brew install safe-rm

# for zim fzf module
brew fzf fd bat
$(brew --prefix)/opt/fzf/install --xdg --key-bindings --completion --update-rc --no-bash --no-fish

# mise management
brew install mise

# python
mise use -g python@latest
# Go
mise use -g go@latest
# Java
mise use -g java@latest
# node.js
mise use -g node@latest
```

## install useful application

note: no need to add `--cask` option now!

```shell
# cask (GUI application)
brew install zed
brew install visual-studio-code
brew install warp
brew install microsoft-outlook microsoft-teams microsoft-excel microsoft-word
brew install docker
brew install vial
brew install discord
brew install dropbox
brew install zoom
brew install zotero

# CLI application
brew install htop
brew install xdg-ninja
```

## remove unused dotfiles

```shell
cd $HOME
rm -rf .zsh_sessions .zsh_history .viminfo .lesshst
```
