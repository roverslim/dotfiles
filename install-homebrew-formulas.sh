#!/usr/bin/env bash -e

echo "Installing Homebrew formulas..."
brew install \
  ack \
  chruby \
  fzf \
  git \
  postgresql

echo "Installing FZF shell extensions...";
/usr/local/opt/fzf/install
