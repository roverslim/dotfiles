#!/usr/bin/env bash -e

echo "Configuring development environment..."
mkdir ~/development
git clone https://github.com/roverslim/dotfiles ~/development/dotfiles
 ~/development/dotfiles
git submodule init
git submodule update

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Symlimk dotfiles to home directory
ln -sfv "$DOTFILES_DIR/.ackrc" ~
ln -sfv "$DOTFILES_DIR/.rubocop.yml" ~
ln -sfv "$DOTFILES_DIR/.vim" ~
ln -sfv "$DOTFILES_DIR/.vimrc" ~

ln -sfv "$DOTFILES_DIR/.oh-my-zsh" ~
ln -sfv "$DOTFILES_DIR/.zshrc" ~
chsh -s /bin/zsh
