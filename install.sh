#!/usr/bin/env bash

function backup() {
  if [ -f $1 ]; then
    rm -rf "${1}.bak"
    mv ${1} "${1}.bak"
  fi
}

# Setup ~/.git***
echo "Setup ~/.git***"
backup ~/.gitconfig
backup ~/.git-prompt.sh
backup ~/.gitignore_global

ln -s `pwd`/git/.gitconfig ~/.gitconfig
ln -s `pwd`/git/.git-prompt.sh ~/.git-prompt.sh
ln -s `pwd`/git/.gitignore_global ~/.gitignore_global

echo "Setup ~/.bash_profile"
backup ~/.bash_profile
ln -s `pwd`/bash/.bash_profile ~/.bash_profile

# Setup brew
if [ ! -f /usr/local/bin/brew ]; then
  echo "Setup brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Setup zlib
if [ ! -L `brew --prefix zlib` ]; then
  echo "Setup zlib"
  brew install zlib
fi

# Setup anyenv
if [ ! -L `brew --prefix anyenv` ]; then
  echo "Setup anyenv"
  brew install anyenv
  anyenv init
  anyenv install --init
  exec $SHELL -l
fi

if [ -f `pwd`/Brewfile ]; then
  brew bundle
fi