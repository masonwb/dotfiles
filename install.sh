#!/bin/bash

# install dotfiles
cp .bash_profile ~/.bash_profile
cp .gitconfig ~/.gitconfig

# install vscode configuration
cp vscode/settings.json ~/.vscode-server/data/User

# configure git username
git config --global user.email $CODER_USER_EMAIL
git config --global committer.email $CODER_USER_EMAIL
