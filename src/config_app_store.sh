#!/bin/bash

function config_app_store
{
  # Enable the WebKit Developer Tools in the Mac App Store
  defaults write com.apple.appstore WebKitDeveloperExtras -bool TRUE

  # Enable Debug Menu in the Mac App Store
  defaults write com.apple.appstore ShowDebugMenu -bool TRUE

  echo "✅  finished configuring 'App Store'"
}
