#!/bin/bash

function config_safari
{
  # Set home page to 'about:blank'
  defaults write com.apple.Safari HomePage -string "about:blank"

  # Show full address
  defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool TRUE

  # Show status bar
  defaults write com.apple.Safari ShowStatusBar -boolean TRUE

  # Allow hitting the Backspace key to go to the previous page in history
  defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool TRUE

  # Disable Safari's thumbnail cache for History and Top Sites
  defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

  # Enable Safari's debug menu
  defaults write com.apple.Safari IncludeInternalDebugMenu -bool TRUE

  # Make Safari's search banners default to Contains instead of Starts With
  defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool FALSE

  # Remove useless icons from Safari's bookmarks bar
  defaults write com.apple.Safari ProxiesInBookmarksBar "()"

  # Enable the Develop menu and the Web Inspector in Safari
  defaults write com.apple.Safari IncludeDevelopMenu -bool TRUE
  defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool TRUE
  defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool TRUE

  # Add a context menu item for showing the Web Inspector in web views
  defaults write NSGlobalDomain WebKitDeveloperExtras -bool TRUE

  echo "✅  finished configuring 'Safari'"
}
