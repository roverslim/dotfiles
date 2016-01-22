#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Bunch of symlinks
# TODO: backup any file, directory or symlink already exists
ln -sfv "$DOTFILES_DIR/.vim" ~
ln -sfv "$DOTFILES_DIR/.vimrc" ~

ln -sfv "$DOTFILES_DIR/.vagrant.d/Vagrantfile" ~/.vagrant.d

ln -sfv "$DOTFILES_DIR/.oh-my-zsh" ~
ln -sfv "$DOTFILES_DIR/z/z.sh" ~
ln -sfv "$DOTFILES_DIR/.zshrc" ~
chsh -s /bin/zsh

ln -sfv "$DOTFILES_DIR/.rubocop.yml" ~
