#!/usr/bin/env bash -e

echo "Configuring system preferences..."
defaults write com.apple.screensaver askForPasswordDelay -int 5 # screensaver lock after 5 seconds
defaults write com.apple.screensaver askForPassword -int 1 # screensaver password
defaults write com.apple.dock tilesize -int 50 && killall Dock # resize the dock
defaults write com.apple.dock autohide && killall Dock # autohide the dock
