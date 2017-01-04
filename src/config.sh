#!/bin/bash

# Content inspired from:
# https://github.com/mathiasbynens/dotfiles/blob/master/.osx
# https://github.com/chrisrickard/laptop.osx

source ./src/config_cask.sh
source ./src/config_command_line.sh
source ./src/config_default_apps.sh
source ./src/config_fish.sh
source ./src/config_git.sh
source ./src/config_global.sh
source ./src/config_hammerspoon.sh

function config
{
  sudo -v

  # Keep-alive: update existing 'sudo' time stamp until the whole script has finished
  while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

  config_global
  config_command_line
  config_default_apps
  config_git
  config_fish
  config_cask
  config_hammerspoon

  echo "Setup finished."
  echo "Areas not covered by this script:"
  echo "  - Setup the screensaver."
  echo "  - Setup the clock and power icons in the menu bar."
  echo "  - Set the default column width in column view."
  echo ""
  echo "Please restart."
}
