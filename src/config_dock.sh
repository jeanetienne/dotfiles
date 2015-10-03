#!/bin/bash

function config_dock
{
  # Set the icon size of Dock items to 36 pixels
  defaults write com.apple.dock tilesize -int 36

  # Enable spring loading for all Dock items
  defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool TRUE

  # Show indicator lights for open applications in the Dock
  defaults write com.apple.dock show-process-indicators -bool TRUE

  # Speed up Mission Control animations
  defaults write com.apple.dock expose-animation-duration -float 0.1

  # Don't automatically rearrange Spaces based on most recent use
  defaults write com.apple.dock mru-spaces -bool FALSE

  # Automatically hide and show the Dock
  defaults write com.apple.dock autohide -bool TRUE

  # Remove the auto-hiding Dock delay
  defaults write com.apple.dock autohide-delay -float 0

  # Make the animation when hiding/showing the Dock faster
  defaults write com.apple.dock autohide-time-modifier -float 0.1

  # Make Dock icons of hidden applications translucent
  defaults write com.apple.dock showhidden -bool TRUE

  # Reset Launchpad
  rm ~/Library/Application\ Support/Dock/*.db
  defaults write com.apple.dock ResetLaunchPad -bool TRUE
  
  # Add a spacer to the left side of the Dock (where the applications are)
  # defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

  # Add a spacer to the right side of the Dock (where the Trash is)
  # defaults write com.apple.dock persistent-others -array-add '{tile-data={}; tile-type="spacer-tile";}'

  # Hot corners
  # Possible values:
  #  0: no-op
  #  2: Mission Control
  #  3: Show application windows
  #  4: Desktop
  #  5: Start screen saver
  #  6: Disable screen saver
  #  7: Dashboard
  # 10: Put display to sleep
  # 11: Launchpad
  # 12: Notification Center

  # Top corners -> Start screen saver
  defaults write com.apple.dock wvous-tl-corner -int 5
  defaults write com.apple.dock wvous-tl-modifier -int 0
  defaults write com.apple.dock wvous-tr-corner -int 5
  defaults write com.apple.dock wvous-tr-modifier -int 0

  # Bottom corners -> Put display to sleep
  defaults write com.apple.dock wvous-bl-corner -int 10
  defaults write com.apple.dock wvous-bl-modifier -int 0
  defaults write com.apple.dock wvous-br-corner -int 10
  defaults write com.apple.dock wvous-br-modifier -int 0
  
  # Disable Dashboard
  defaults write com.apple.dashboard enabled-state -int 1

  # Wipe all app icons from the Dock and adds some
  defaults write com.apple.dock persistent-apps -array

  defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/System Preferences.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
  defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Safari.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"

  # Restart Dock
  killAll Dock

  echo "✅  finished configuring 'Dock & Dashboard'"
}
