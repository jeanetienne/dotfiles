#!/bin/bash

function config_trackpad
{
  # Enable tap to click for this user and for the login screen
  defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool TRUE
  defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
  defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

  # Use scroll gesture with the Ctrl (^) modifier key to zoom, and follows the keyboard focus while zoomed in
  defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool TRUE
  defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144
  defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool TRUE

  echo "✅  finished configuring 'Trackpad'"
}
