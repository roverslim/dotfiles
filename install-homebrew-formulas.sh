#!/usr/bin/env bash -e

echo "Installing Homebrew formulas..."
brew install \
  ack \
  chruby \
  elixir \
  elm \
  fzf \
  git \
  heroku \
  postgresql \
  ruby-build \
  ruby-install

echo "Installing FZF shell extensions...";
/usr/local/opt/fzf/install
