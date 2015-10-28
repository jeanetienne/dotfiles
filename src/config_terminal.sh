#!/bin/bash

function config_terminal
{
  # Only use UTF-8 in Terminal.app
  defaults write com.apple.Terminal StringEncodings -array 4
  
  # Open my custom profile to load it, and close the window
  open ./src/jeanetienne.terminal -a Terminal.app
#  sleep 1
#  osascript -e 'tell application "Terminal" to close window 1'

  # Default style
  defaults write com.apple.Terminal "Default Window Settings" jeanetienne
  defaults write com.apple.Terminal "Startup Window Settings" jeanetienne

  # Using fish
  defaults write com.apple.Terminal Shell "/usr/local/bin/fish"

  echo "✅  finished configuring 'Terminal'"
}
