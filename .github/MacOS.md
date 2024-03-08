# setup for the MacOS

## useful package

```shell
# for zim exa module (now exa is not supported, so need to install eza)
brew install eza

# for zim utility module
brew install safe-rm

# for zim fzf module
brew fzf fd bat
$(brew --prefix)/opt/fzf/install --xdg --key-bindings --completion --update-rc --no-bash --no-fish
```

## mise management

```shell
brew install mise
```

- python environment

```shell
mise use -g python@latest
```

- Golang environment

```shell
mise use -g go@latest
```

- Java environment

```shell
mise use -g java@latest
```

- node.js environment

```shell
mise use -g node@latest
```
