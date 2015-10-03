#!/bin/bash

function config_screen_saver
{
  # Require password 5s after screen saver begins
  defaults write com.apple.screensaver askForPassword -int 1
  defaults write com.apple.screensaver askForPasswordDelay -int 5

  # Require password immediately after sleep or screen saver begins
  defaults write com.apple.screensaver askForPassword -int 1
  defaults write com.apple.screensaver askForPasswordDelay -int 1

  echo "✅  finished configuring 'Screen Saver'"
}
