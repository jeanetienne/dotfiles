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

  brew install --cask caprine --appdir=~/Applications; 
  brew install --cask cyberduck --appdir=~/Applications; 
  brew install --cask daisydisk --appdir=~/Applications; 
  brew install --cask dash --appdir=~/Applications; 
  brew install --cask dropbox --appdir=~/Applications; 
  brew install --cask fastlane --appdir=~/Applications; 
  brew install --cask firefox --appdir=~/Applications; 
  brew install --cask font-fira-code --appdir=~/Applications; 
  brew install --cask fork --appdir=~/Applications; 
  brew install --cask hammerspoon --appdir=~/Applications; 
  brew install --cask harvest --appdir=~/Applications; 
  brew install --cask nordvpn --appdir=~/Applications; 
  brew install --cask paw --appdir=~/Applications; 
  brew install --cask proxyman --appdir=~/Applications; 
  brew install --cask slack --appdir=~/Applications; 
  brew install --cask textmate --appdir=~/Applications; 
  brew install --cask transmission --appdir=~/Applications; 
  brew install --cask vlc --appdir=~/Applications; 
  brew install --cask whatsapp --appdir=~/Applications; 
  brew install --cask zeplin --appdir=~/Applications; 

  echo "✅  finished configuring 'Brew'"
}
