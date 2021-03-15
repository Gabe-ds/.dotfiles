#!/bin/sh

# Install Homebrew
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/instal>

# Setup profiles
git clone https://github.com/Gabe-ds/.dotfiles.git
cp .dotfiles/.zprofile ./
cp .dotfiles/.zshrc ./
source .zprofile .zshrc

# Install pyenv, pipenv, postgresql
brew install pyenv pipenv postgresql

# Setup Python 3.8.2
pyenv install 3.8.2
pyenv global 3.8.2
