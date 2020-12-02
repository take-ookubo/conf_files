#!/usr/bin/env bash

function backup() {
  if [ -f $1 ]; then
    timestamp=$(date "+%Y%m%d%H%M%S")
    cp -fRL ${1} "${1}.bak_${timestamp}"
    rm -rf "${1}"
  fi
}

# Setup ~/.git***
echo "Setup ~/.git***"
read -p "Enter github user name: xxxx yyyy > " user
read -p "Enter github email: xxxxx@example.com > " email
read -p "Enter github token: XXXXXX_TOKEN_EXAMPLE > " github_token

if [ -z "${user}" ] \
  || [ -z "${email}" ] \
  || [ -z "${github_token}" ]; then
  echo "Skip setup ~/.git***"
else
  backup ~/.gitconfig
  backup ~/.git-prompt.sh
  backup ~/.gitignore_global

  cp `pwd`/git/.gitconfig ~/.gitconfig
  sed -i ""  "s|xxxx yyyy|${user}|g" ~/.gitconfig
  sed -i ""  "s|xxxxx@example.com|${email}|g" ~/.gitconfig
  sed -i ""  "s|XXXXXX_TOKEN_EXAMPLE|${github_token}|g" ~/.gitconfig
  ln -s `pwd`/git/.git-prompt.sh ~/.git-prompt.sh
  ln -s `pwd`/git/.gitignore_global ~/.gitignore_global
fi

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

if [ -L `brew --prefix anyenv` ]; then
  anyenv install rbenv
  anyenv install pyenv
  anyenv install phpenv
  anyenv install nodenv
  exec $SHELL -l
fi

if [ -f `pwd`/Brewfile ]; then
  brew bundle
fi

echo "Setup ~/.tmux.conf"
backup ~/.tmux.conf
ln -s `pwd`/tmux/.tmux.conf ~/.tmux.conf

# rustup が無ければインストール
if !(type rustup > /dev/null 2>&1); then
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

