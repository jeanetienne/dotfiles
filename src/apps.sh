#!/bin/bash

# Inspiration from:
# https://github.com/chrisrickard/laptop.osx

function apps
{
  # .bash_profile
  cat ./src/bash_profile >> ~/.bash_profile
  source ~/.bash_profile

  # Homebrew
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

  # Homebrew config
  brew doctor
  
  # CLI apps
  brew install 
  brew install ruby 
  brew install git 
  brew install phinze/cask/brew-cask
  
  # brew install coreutils 
  # brew install vim 
  # brew install mackup

  # Main Mac apps
  brew cask install dropbox
  brew cask install evernote
  brew cask install f-lux
  brew cask install firefox
  brew cask install google-chrome
  brew cask install knock
  brew cask install sizeup
  brew cask install sourcetree
  brew cask install textmate
  brew cask install the-unarchiver
  brew cask install utorrent
  brew cask install vlc

  # brew cask install imageoptim
  # brew cask install pixelmator
  # brew cask install xscope

  # QuickLook plugins
  brew cask install provisioning
  brew cask install qlstephen
  brew cask install qlcolorcode
  brew cask install quicklook-json

  # brew cask install qlmarkdown
  # brew cask install quicklook-csv
  # brew cask install webp-quicklook
  # brew cask install suspicious-package
  
  # Finalising
  brew update

  echo ""
  echo "App install finished."
  echo "Areas not covered by this script:"
  echo "  - Setup correct PATH variable for php to use MAMP version."
  echo "  - Install apps such as: Adobe CS, Aperture, Final Cut Pro, iWork, Microsoft Office, etc."
}
