#!/bin/bash

function config_iterm
{
  echo "Configuring 'iTerm'"

  open -g ~/Applications/iTerm.app

  sleep 2
  echo " - First run"
  osascript quit_iterm.scpt

  sleep 2
  echo " - Writing default configuration"
  killAll cfprefsd

  sleep 5
  echo " - Updating configuration"
  createPlist
  updatePlist
  
  killAll cfprefsd
  sleep 1

  echo "✅  finished configuring 'iTerm'"
}

function createPlist
{
  /usr/libexec/PlistBuddy -c 'Add :"PromptOnQuit" bool false' ~/Library/Preferences/com.googlecode.iterm2.plist
  /usr/libexec/PlistBuddy -c 'Add :"New Bookmarks:0:Transparency" real 0.2' ~/Library/Preferences/com.googlecode.iterm2.plist
  /usr/libexec/PlistBuddy -c 'Add :"New Bookmarks:0:Blur" bool true' ~/Library/Preferences/com.googlecode.iterm2.plist
  /usr/libexec/PlistBuddy -c 'Add :"New Bookmarks:0:Blur Radius" real 5' ~/Library/Preferences/com.googlecode.iterm2.plist
  /usr/libexec/PlistBuddy -c 'Add :"New Bookmarks:0:Command" string "/usr/local/bin/fish"' ~/Library/Preferences/com.googlecode.iterm2.plist
  /usr/libexec/PlistBuddy -c 'Add :"New Bookmarks:0:Custom Command" string "Yes"' ~/Library/Preferences/com.googlecode.iterm2.plist
  /usr/libexec/PlistBuddy -c 'Add :"New Bookmarks:0:Command Directory" string "Recycle"' ~/Library/Preferences/com.googlecode.iterm2.plist
}

function updatePlist
{
	/usr/libexec/PlistBuddy -c 'Set :"PromptOnQuit" bool false' ~/Library/Preferences/com.googlecode.iterm2.plist
	/usr/libexec/PlistBuddy -c 'Set :"New Bookmarks:0:Transparency" 0.2' ~/Library/Preferences/com.googlecode.iterm2.plist
	/usr/libexec/PlistBuddy -c 'Set :"New Bookmarks:0:Blur" true' ~/Library/Preferences/com.googlecode.iterm2.plist
	/usr/libexec/PlistBuddy -c 'Set :"New Bookmarks:0:Blur Radius" 5' ~/Library/Preferences/com.googlecode.iterm2.plist
	/usr/libexec/PlistBuddy -c 'Set :"New Bookmarks:0:Command" "/usr/local/bin/fish"' ~/Library/Preferences/com.googlecode.iterm2.plist
	/usr/libexec/PlistBuddy -c 'Set :"New Bookmarks:0:Custom Command" "Yes"' ~/Library/Preferences/com.googlecode.iterm2.plist
	/usr/libexec/PlistBuddy -c 'Set :"New Bookmarks:0:Command Directory" "Recycle"' ~/Library/Preferences/com.googlecode.iterm2.plist
}
