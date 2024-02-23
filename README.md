# dotfiles

I am using [yadm](https://yadm.io/#) to manage my setting files.

Still I am a begginer to use it, so I will note how to use from the very basic part.

## installation
I am using MacOS now, so I installed it by
```shell
brew install yadm
```

Also I have a Linux machine, but I always use it remotely.
I like the MacOS interface, so it is enough.

## start to use yadm
From the beggining, I started like
```shell
cd
yadm init
yadm add <file>
yadm commit -m "message"
yadm remote add origin <url>
yadm push -u origin <local branch>:<remote branch>
```

This is almost the same with normal git repository.

I haven't try `yadm clone <url>` because I have only one MacOS machine, so when I start to manage different machines,
I will note about it.

## add or modify the dotfiles

If you want to push the new dotfile,
```shell
yadm add <file>
yadm commit -m "message"
yadm push
```

## exclude the README.md

When we command "yadm clone", this README.md file also includes.
In order to exclude this file, I am using "sparse-checkout".

Usually, we need to configure it for each repository, but yadm is using fixed directory,
so I include the "git" configuration file in this yadm repository.

```shell
yadm gitconfig core.sparsecheckout true
vi ~/.local/share/yadm/repo.git/info/sparse-checkout

# modify to:
cat ~/.local/share/yadm/repo.git/info/sparse-checkout
*
!README.md
!LICENSE

yadm add ~/.local/share/yadm/repo.git/info/sparse-checkout
yadm commit -m "add: sparse-checkout"
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

# shell configuration

I am using "zsh" shell and [starship](https://starship.rs/) with [warp](https://www.warp.dev/) shell.
For the MacOS, zsh is default shell and these softwares can be installed by:
```shell
brew install --cask warp
brew install starship
vi .zshrc

# add this line
eval "$(starship init zsh)"
```

## configuration
If you start from the beggining, you need to make "starship.toml" to configure, but you start from "yadm clone", you don't care about it.
```shell
mkdir -p ~/.config && touch ~/.config/starship.toml
```
