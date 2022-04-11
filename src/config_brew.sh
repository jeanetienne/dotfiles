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
  
  echo "✅  finished configuring 'Brew'"
}
