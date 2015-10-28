#!/bin/bash

# Content inspired from:
# https://github.com/mathiasbynens/dotfiles/blob/master/.osx
# https://github.com/chrisrickard/laptop.osx

# source ./config_iterm.sh
source ./src/config_app_store.sh
source ./src/config_contacts.sh
source ./src/config_disk_utility.sh
source ./src/config_display.sh
source ./src/config_dock.sh
source ./src/config_finder.sh
source ./src/config_fish.sh
source ./src/config_git.sh
source ./src/config_global.sh
source ./src/config_itunes.sh
source ./src/config_keyboard.sh
source ./src/config_mail.sh
source ./src/config_messages.sh
source ./src/config_power_management.sh
source ./src/config_safari.sh
source ./src/config_screen_saver.sh
source ./src/config_spotlight.sh
source ./src/config_terminal.sh
source ./src/config_time_machine.sh
source ./src/config_trackpad.sh

function config
{
  sudo -v

  # Keep-alive: update existing 'sudo' time stamp until the whole script has finished
  while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

  config_app_store
  config_contacts
  config_disk_utility
  config_display
  config_dock
  config_finder
  config_fish
  config_git
  config_global
  # config_iterm
  config_itunes
  config_keyboard
  config_mail
  config_messages
  config_power_management
  config_safari
  config_screen_saver
  config_spotlight
  config_terminal
  config_time_machine
  config_trackpad

  echo "Setup finished."
  echo "Areas not covered by this script:"
  echo "  - Setup the screensaver."
  echo "  - Setup the clock and power icons in the menu bar."
  echo "  - Set the default column width in column view."
  echo ""
  echo "Please restart."
}
