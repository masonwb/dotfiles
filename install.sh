#!/bin/bash

# install dotfiles
cp .bash_profile ~/.bash_profile
cp .gitconfig ~/.gitconfig

# configure git username
git config --global user.email $CODER_USER_EMAIL
git config --global committer.email $CODER_USER_EMAIL

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
