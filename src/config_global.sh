#!/bin/bash

function config_global
{
  # Set computer name (as done via System Preferences → Sharing)
  sudo scutil --set ComputerName "Jean-Étienne's MacBook Pro";
  sudo scutil --set HostName "jeanetienne";
  sudo scutil --set LocalHostName "jeanetienne";
  sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "jeanetienne"

  # Allow remote login
  sudo systemsetup -setremotelogin on

  # Set network time to on
  sudo systemsetup -setusingnetworktime on

  # Set the server for network time
  sudo systemsetup -setNetworkTimeServer time.asia.apple.com.

  # Set the timezone. See 'systemsetup -listtimezones' for other values
  sudo systemsetup -settimezone "Australia/Melbourne" > /dev/null

  # Set language and text formats
  defaults write NSGlobalDomain AppleLanguages -array "en"
  defaults write NSGlobalDomain AppleLocale -string "en_AU@currency=AUD"
  defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
  defaults write NSGlobalDomain AppleMetricUnits -bool TRUE

  # Disable the sound effects on boot
  sudo nvram SystemAudioVolume=" "

  # Enable Dark mode
  defaults write AppleInterfaceStyle Dark

  # Power button shows shutdown dialog
  defaults write com.apple.loginwindow PowerButtonSleepsSystem -bool FALSE

  # Make some dialog and window animations faster
  defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

  # Always show scrollbars. Possible values: 'WhenScrolling', 'Automatic' and 'Always'
  defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling"

  # Disable opening and closing window animations
  defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool FALSE

  # Expand save panel by default
  defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool TRUE

  # Expand print panel by default
  defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool TRUE

  # Save to disk (not to iCloud) by default
  defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool FALSE

  # Automatically quit printer app once the print jobs complete
  defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool TRUE

  # Disable the "Are you sure you want to open this application?" dialog
  defaults write com.apple.LaunchServices LSQuarantine -bool FALSE

  # Display ASCII control characters using caret notation in standard text views
  # Try e.g. 'cd /tmp; unidecode "\x{0000}" > cc.txt; open -e cc.txt'
  defaults write NSGlobalDomain NSTextShowsControlCharacters -bool TRUE

  # Disable Resume system-wide
  defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool FALSE

  # Disable automatic termination of inactive apps
  defaults write NSGlobalDomain NSDisableAutomaticTermination -bool TRUE

  # Disable the crash reporter
  defaults write com.apple.CrashReporter DialogType -string "none"

  # Set Help Viewer windows to non-floating mode
  defaults write com.apple.helpviewer DevMode -bool TRUE

  # Reveal IP address, hostname, OS version, etc. when clicking the clock in the login window
  sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

  # Disable smart quotes as they're annoying when typing code
  defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool FALSE

  # Disable smart dashes as they're annoying when typing code
  defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool FALSE

  # Disable auto-correct
  defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool FALSE

  echo "✅  finished configuring 'Global'"
}
