# setup for the Linux OS
This is for AlmaLinux 9

## useful package

```shell
# for zim exa module (now exa is not supported, now eza)
sudo dnf install eza

sudo dnf install fzf bat

# for mise
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo https://mise.jdx.dev/rpm/mise.repo
sudo dnf install -y mise
```
