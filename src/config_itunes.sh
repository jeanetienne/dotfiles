#!/bin/bash

function config_itunes
{
  # Enable "Prevent iPods, iPhones, and iPads from syncing automatically"
  defaults write com.apple.iTunes dontAutomaticallySyncIPods -bool TRUE

  echo "✅  finished configuring 'iTunes'"
}
