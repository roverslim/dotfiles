#!/usr/bin/env bash -e

sh configure-system-preferences.sh
sh install-command-line-tools.sh

echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sh install-homebrew-formulas.sh
sh install-applications.sh

sh configure-development-environment.sh
