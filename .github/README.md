# dotfiles

I am using [yadm](https://yadm.io/#) to manage my setting files.

Still I am a begginer to use it, so I will note how to use from the very basic part.

## My style in MacBook

- zshell: for the shell
- [zim](https://zimfw.sh/): for zsh management
- starship: for the cool prompt
- tmux
- vim/nvim
- zed: text editor and terminal
- vscode (cursor): text editor and terminal
- (warp: terminal (still testing))
- yadm: to manage the these dotfiles

## preparation

Add this line for XDG configuration

- /etc/zshenv

```shell
export ZDOTDIR="${HOME}/.config/zsh"
```

## installation

I am using MacOS now, so I installed it by

```shell
brew install yadm
```

If you are using Linux OS, you can find the information from [yadm](https://yadm.io/#).

## start to use yadm

If you are interested in my dotfiles, you can test with

```shell
cd $HOME
yadm clone <url>
```

## add or modify the dotfiles

If you want to push the new dotfile,

```shell
yadm add <file>
yadm commit -m "message"
yadm push
```

## useful commands

These commands are used also for git management

```shell
# check the status
yadm status

# push/get the files
yadm fetch
yadm push
```

These commands are specific for yadm management

```shell
# check the managed files
yadm list -a
```

I will update it when I learn yaml more.

# bootstrap

when you clone this repository, you can select to run the bootstrap script or not.
This script will install important package automatically like

- zsh
- starship
- tmux
- ...
