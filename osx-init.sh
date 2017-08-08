#!/usr/bin/env bash -e

echo "Installing Xcode Command Line Tools..."
touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
PROD=$(softwareupdate -l | grep "\*.*Command Line" | head -n 1 | awk -F"*" '{print $2}' | sed -e 's/^ *//' | tr -d '\n')
softwareupdate -i "$PROD" --verbose

echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install \
  ack \
  chruby \
  fzf \
  git \
  postgresql

echo "Installing FZF shell extensions...";
/usr/local/opt/fzf/install
touch ~/.vimrc;

echo "Installing applications..."
brew cask install \
  1password \
  google-chrome \
  iterm2 \
  spotify \
  spotifree

echo "Setting up development environment..."
mkdir ~/development
git clone https://github.com/roverslim/dotfiles ~/development/dotfiles
 ~/development/dotfiles
git submodule init
git submodule update

sh symlink-dotdfiles-to-home-directory.sh
