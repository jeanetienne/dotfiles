#!/bin/bash

# Inspiration from:
# https://github.com/chrisrickard/laptop.osx

function apps
{
  # Homebrew
  mkdir -p ~/Documents/Homebrew
  curl -L https://github.com/Homebrew/homebrew/tarball/master | tar xz --strip 1 -C ~/Documents/Homebrew
  ln -s ~/Documents/Homebrew/bin/brew /usr/local/bin/brew

  # Homebrew
  brew update
  brew doctor

  # CLI apps
  brew install ruby
  brew install git
  brew install fish
  brew install phinze/cask/brew-cask

  # Main Mac apps
  brew cask install cyberduck
  brew cask install dropbox
  brew cask install evernote
  brew cask install f-lux
  brew cask install google-chrome
  # brew cask install iterm2
  brew cask install paw
  brew cask install reveal
  brew cask install sourcetree
  brew cask install textmate
  brew cask install the-unarchiver
  brew cask install utorrent
  brew cask install vlc

  # QuickLook plugins
  brew cask install provisioning
  brew cask install qlstephen
  brew cask install qlcolorcode
  brew cask install quicklook-json
  brew cask install qlmarkdown
  brew cask install suspicious-package

  echo ""
  echo "App install finished."
  echo "Areas not covered by this script:"
  echo "  - Install apps such as: Adobe CS, Aperture, Final Cut Pro, iWork, Microsoft Office, etc."
}
