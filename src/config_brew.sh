#!/bin/bash

function config_brew
{
  # Homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	
  # Homebrew
  brew doctor
  brew update

  # CLI apps
  brew bundle

  echo "✅  finished configuring 'Brew'"
}
