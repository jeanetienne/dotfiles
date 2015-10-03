#!/bin/bash

function config_time_machine
{
  # Prevent Time Machine from prompting to use new hard drives as backup volume
  defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool TRUE

  # Disable local Time Machine backups
  sudo tmutil disablelocal

  echo "✅  finished configuring 'Time Machine'"
}
