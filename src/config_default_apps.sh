#!/bin/bash

function config_default_apps
{
  # Enable the WebKit Developer Tools in the Mac App Store
  defaults write com.apple.appstore WebKitDeveloperExtras -bool TRUE

  # Enable Debug Menu in the Mac App Store
  defaults write com.apple.appstore ShowDebugMenu -bool TRUE

  echo "-> finished configuring 'App Store'"

  # Enable the debug menu in Address Book
  defaults write com.apple.addressbook ABShowDebugMenu -bool TRUE

  echo "-> finished configuring 'Contacts'"

  # Enable the debug menu
  defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool TRUE
  defaults write com.apple.DiskUtility advanced-image-options -bool TRUE

  echo "-> finished configuring 'Disk Utility'"

  # Save screenshots to the desktop
  defaults write com.apple.screencapture location -string "${HOME}/Desktop"

  # Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
  defaults write com.apple.screencapture type -string "png"

  # Enable subpixel font rendering on non-Apple LCDs
  defaults write NSGlobalDomain AppleFontSmoothing -int 2

  # Enable HiDPI display modes (requires restart)
  sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool TRUE

  echo "-> finished configuring 'Display'"

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

  echo "-> finished configuring 'Dock & Dashboard'"

  # Enable fast switching with full name in the status bar
  sudo defaults write /Library/Preferences/.GlobalPreferences MultipleSessionEnabled -bool TRUE

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

  echo "-> finished configuring 'Finder'"

  # Enable "Prevent iPods, iPhones, and iPads from syncing automatically"
  defaults write com.apple.iTunes dontAutomaticallySyncIPods -bool TRUE

  # Disable the pop-up to ask you to update your iOS devices when plugged
  com.apple.itunes disableCheckForDeviceUpdates -bool YES

  echo "-> finished configuring 'iTunes'"

  # Set a blazingly fast keyboard repeat rate
  defaults write NSGlobalDomain KeyRepeat -int 1
  defaults write NSGlobalDomain InitialKeyRepeat -int 15

  # disable automatically illuminate built-in MacBook keyboard in low light
  defaults write com.apple.BezelServices kDim -bool FALSE

  # Turn off keyboard illumination when computer is not used for 1 minute
  defaults write com.apple.BezelServices kDimTime -int 60

  echo "-> finished configuring 'Keyboard'"

  # Don't dim screen when changing power source
  sudo pmset -a lessbright 0

  # Don't dim screen before putting display to sleep
  sudo pmset -a halfdim 0

  # Don't awake when changing power source
  sudo pmset -a acwake 0

  # Awake when opening lid
  sudo pmset -a lidwake 1

  # Enable hibernate after a long sleep
  sudo pmset -a autopoweroff 1

  # Delay before hibernation
  sudo pmset -a autopoweroffdelay 7200

  # Disable standby mode
  sudo pmset -a standby 0

  # Set standby delay to 1 day
  sudo pmset -a standbydelay 86400

  # Disable dropping FileVault keys when hibernating
  sudo pmset -a destroyfvkeyonstandby 0

  # Wake up on network "magic packet"
  sudo pmset -a womp 1

  # Keep awake if a tty session is on
  sudo pmset -a ttyskeepawake 1

  # Enable sudden motion sensor
  sudo pmset -a sms 1

  # Delay to put drive to sleep
  sudo pmset -a disksleep 20

  # Display & computer sleep time for AC charger mode
  sudo pmset -c displaysleep 15
  sudo pmset -c sleep 0

  # Display & computer sleep time for battery mode
  sudo pmset -b displaysleep 5
  sudo pmset -b sleep 10

  echo "-> finished configuring 'Power Management'"

  # Set home page to 'about:blank'
  defaults write com.apple.Safari HomePage -string "about:blank"

  # Show full address
  defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool TRUE

  # Show status bar
  defaults write com.apple.Safari ShowStatusBar -boolean TRUE

  # Allow hitting the Backspace key to go to the previous page in history
  defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool TRUE

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

  echo "-> finished configuring 'Safari'"

  # Require password immediately after sleep or screen saver begins
  defaults write com.apple.screensaver askForPassword -int 1
  defaults write com.apple.screensaver askForPasswordDelay -int 1

  # Tab navigation shortcuts
  defaults write -app Safari NSUserKeyEquivalents '{
    "Show Next Tab" = "@~\\U2192";
    "Show Previous Tab" = "@~\\U2190";
  }'

  echo "-> finished configuring 'Screen Saver'"

  # Disable Spotlight indexing for any volume that gets mounted and has not yet
  # been indexed before.
  # Use 'sudo mdutil -i off "/Volumes/foo"' to stop indexing any volume.
  sudo defaults write /.Spotlight-V100/VolumeConfiguration Exclusions -array "/Volumes"

  # Load new settings before rebuilding the index
  killall mds > /dev/null 2>&1

  # Make sure indexing is enabled for the main volume
  sudo mdutil -i on / > /dev/null

  # Rebuild the index from scratch
  sudo mdutil -E / > /dev/null

  echo "-> finished configuring 'Spotlight'"

  # Tab navigation shortcuts
  defaults write -app Terminal NSUserKeyEquivalents '{
    "Show Next Tab" = "@~\\U2192";
    "Show Previous Tab" = "@~\\U2190";
  }'

  # Only use UTF-8 in Terminal.app
  defaults write com.apple.Terminal StringEncodings -array 4

  # Open my custom profile to load it, and close the window
  open ./src/jeanetienne.terminal -a Terminal.app

  # Default style
  defaults write com.apple.Terminal "Default Window Settings" jeanetienne
  defaults write com.apple.Terminal "Startup Window Settings" jeanetienne

  # Using fish
  defaults write com.apple.Terminal Shell "/usr/local/bin/fish"

  echo "-> finished configuring 'Terminal'"

  # Prevent Time Machine from prompting to use new hard drives as backup volume
  defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool TRUE

  echo "-> finished configuring 'Time Machine'"

  # Enable tap to click for this user and for the login screen
  defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool TRUE
  defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
  defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

  # Use scroll gesture with the Ctrl (^) modifier key to zoom, and follows the keyboard focus while zoomed in
  defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool TRUE
  defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144
  defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool TRUE

  echo "-> finished configuring 'Trackpad'"
  
  echo "✅  finished configuring 'Default Apps'"
}
