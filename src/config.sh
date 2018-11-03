#!/bin/bash

# Content inspired from:
# https://github.com/mathiasbynens/dotfiles/blob/master/.osx
# https://github.com/chrisrickard/laptop.osx

source ./src/config_aperture.sh
source ./src/config_brew.sh
source ./src/config_default_apps.sh
source ./src/config_fish.sh
source ./src/config_git.sh
source ./src/config_global.sh
source ./src/config_hammerspoon.sh
source ./src/config_xcode.sh

function config
{
  sudo -v

  # Keep-alive: update existing 'sudo' time stamp until the whole script has finished
  while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

  config_global
  config_brew
  config_default_apps
  config_git
  config_fish
  config_hammerspoon
  config_xcode
  config_aperture

  cat ./src/post_install_message.txt
}
