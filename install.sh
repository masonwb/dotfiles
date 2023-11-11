#!/bin/bash

# install dotfiles
cp .bash_profile ~/.bash_profile
cp .gitconfig ~/.gitconfig

# install vscode configuration
cp vscode/settings.json ~/.local/share/code-server/User

# configure git email
git config --global user.email $CODER_USER_EMAIL
git config --global committer.email $CODER_USER_EMAIL

# create base directories
mkdir -p ~/Development/{git,certs}
