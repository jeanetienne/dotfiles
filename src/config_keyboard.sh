#!/bin/bash

function config_keyboard
{
  # Set a blazingly fast keyboard repeat rate
  defaults write NSGlobalDomain KeyRepeat -int 1
  defaults write NSGlobalDomain InitialKeyRepeat -int 10

  # disable automatically illuminate built-in MacBook keyboard in low light
  defaults write com.apple.BezelServices kDim -bool FALSE

  # Turn off keyboard illumination when computer is not used for 1 minute
  defaults write com.apple.BezelServices kDimTime -int 60
  
  echo "✅  finished configuring 'Keyboard'"
}
