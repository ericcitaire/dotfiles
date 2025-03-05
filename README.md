# My dotfiles

## Recommended packages

```
sudo apt install git zsh jq python3 htop build-essential curl zip unzip
# WSL only
sudo apt install wslu
```

## Installation

```
git clone https://github.com/ericcitaire/dotfiles.git ~/.dotfiles
git -C ~/.dotfiles submodule update --init --recursive --depth 1
~/.dotfiles/install
```
