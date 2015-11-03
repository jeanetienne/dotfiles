#!/bin/bash

# Inspiration from:
# https://github.com/chrisrickard/laptop.osx

function apps
{
  # Homebrew
  mkdir -p ~/Documents/Homebrew
  curl -L https://github.com/Homebrew/homebrew/tarball/master | tar xz --strip 1 -C ~/Documents/Homebrew
  sudo mkdir -p /usr/local/bin
  sudo ln -s ~/Documents/Homebrew/bin/brew /usr/local/bin/brew

  # Homebrew
  brew doctor
  brew update

  # CLI apps
  brew install ruby
  brew install git
  brew install fish
  brew install phinze/cask/brew-cask

  # Main Mac apps
  brew cask install cyberduck
  brew cask install dropbox
  brew cask install evernote
  brew cask install flux
  brew cask install google-chrome
  brew cask install paw
  brew cask install reveal
  brew cask install sourcetree
  brew cask install textmate
  brew cask install the-unarchiver
  brew cask install vlc

  echo ""
  echo "App install finished."
  echo "Areas not covered by this script:"
  echo "  - Install apps such as: Adobe CS, Aperture, Final Cut Pro, iWork, Microsoft Office, etc."
}
