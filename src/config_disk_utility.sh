#!/bin/bash

function config_disk_utility
{
  # Enable the debug menu
  defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool TRUE
  defaults write com.apple.DiskUtility advanced-image-options -bool TRUE

  echo "✅  finished configuring 'Disk Utility'"
}
