#!/bin/bash

function config_finder
{
  # Disable window animations and Get Info animations
  defaults write com.apple.finder DisableAllAnimations -bool TRUE

  # Set Home as the default location for new Finder windows
  # For other paths, use 'PfLo' and 'file:///full/path/here/'
  defaults write com.apple.finder NewWindowTarget -string "PfLo"
  defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

  # Show/Hide icons for hard drives, servers, and removable media on the desktop
  defaults write com.apple.finder ShowHardDrivesOnDesktop -bool FALSE
  defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool TRUE
  defaults write com.apple.finder ShowMountedServersOnDesktop -bool TRUE
  defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool TRUE

  # Set Finder window sidebar icon size. Possible values: Small: 1, Medium: 2, Large: 3
  defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

  # Show all filename extensions
  defaults write NSGlobalDomain AppleShowAllExtensions -bool TRUE

  # Disable "Open folder in tabs instead of new windows"
  defaults write com.apple.Finder FinderSpawnTab -bool FALSE

  # Finder windows
  defaults write com.apple.finder ShowStatusBar -bool TRUE
  defaults write com.apple.finder ShowPathbar -bool TRUE
  # Four-letter codes for the other view modes: icnv, clmv, Flwv, Nlsv
  defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

  # Allow text selection in Quick Look
  defaults write com.apple.finder QLEnableTextSelection -bool TRUE

  # When performing a search, search the current folder by default
  defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

  # Disable the warning when changing a file extension
  defaults write com.apple.finder FXEnableExtensionChangeWarning -bool FALSE

  # Spring loading for directories
  defaults write NSGlobalDomain com.apple.springing.enabled -bool TRUE
  defaults write NSGlobalDomain com.apple.springing.delay -float 0

  # Avoid creating .DS_Store files on network volumes
  defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE

  # Disable disk image verification
  defaults write com.apple.frameworks.diskimages skip-verify -bool TRUE
  defaults write com.apple.frameworks.diskimages skip-verify-locked -bool TRUE
  defaults write com.apple.frameworks.diskimages skip-verify-remote -bool TRUE

  # Enable snap-to-grid for icons on the desktop and in other icon views
  /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
  /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

  # Set the size of icons on the desktop and in other icon views
  /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 40" ~/Library/Preferences/com.apple.finder.plist
  /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:iconSize 40" ~/Library/Preferences/com.apple.finder.plist

  # Set grid spacing for icons on the desktop and in other icon views
  /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 50" ~/Library/Preferences/com.apple.finder.plist
  /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 50" ~/Library/Preferences/com.apple.finder.plist

  # Disable the warning before emptying the Trash
  defaults write com.apple.finder WarnOnEmptyTrash -bool FALSE

  # Enable AirDrop over Ethernet and on unsupported Macs running Lion
  defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool TRUE

  # Show the ~/Library folder
  chflags nohidden ~/Library

  # Expand the following File Info panes:
  # "General", "Open with", and "Sharing & Permissions"
  defaults write com.apple.finder FXInfoPanesExpanded -dict \
  	General -bool TRUE \
  	OpenWith -bool TRUE \
  	Privileges -bool TRUE

  # Final reset
  killAll cfprefsd
  killAll Finder

  echo "✅  finished configuring 'Finder'"
}
