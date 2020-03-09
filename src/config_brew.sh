#!/bin/bash

function config_brew
{
  # Homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
	
  # Homebrew
  brew doctor
  brew update

  # CLI apps
  brew bundle --file="./src/Brewfile"

  brew cask install caprine --appdir=~/Applications
  brew cask install cyberduck --appdir=~/Applications
  brew cask install daisydisk --appdir=~/Applications
  brew cask install dash --appdir=~/Applications
  brew cask install dropbox --appdir=~/Applications
  brew cask install fastlane --appdir=~/Applications
  brew cask install firefox --appdir=~/Applications
  brew cask install font-fira-code --appdir=~/Applications
  brew cask install fork --appdir=~/Applications
  brew cask install hammerspoon --appdir=~/Applications
  brew cask install harvest --appdir=~/Applications
  brew cask install nordvpn --appdir=~/Applications
  brew cask install notion --appdir=~/Applications
  brew cask install paw --appdir=~/Applications
  brew cask install proxyman --appdir=~/Applications
  brew cask install slack --appdir=~/Applications
  brew cask install textmate --appdir=~/Applications
  brew cask install transmission --appdir=~/Applications
  brew cask install vlc --appdir=~/Applications
  brew cask install wechat --appdir=~/Applications
  brew cask install whatsapp --appdir=~/Applications
  brew cask install zeplin --appdir=~/Applications

  echo "✅  finished configuring 'Brew'"
}
