#!/bin/bash

function config_cask
{
	# Main Mac apps
	brew cask install cyberduck
	brew cask install dash
	brew cask install dropbox
	brew cask install evernote
	brew cask install flux
	brew cask install hammerspoon
	brew cask install paw
	brew cask install reveal
	brew cask install sourcetree
	brew cask install textmate
	brew cask install the-unarchiver
	brew cask install vlc

	echo "✅  finished configuring 'cask'"
}
