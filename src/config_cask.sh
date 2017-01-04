#!/bin/bash

function config_cask
{
    # Main Mac apps
    brew cask install cyberduck
    brew cask install dash
    brew cask install dropbox
    brew cask install flux
    brew cask install hammerspoon
    brew cask install paw
    brew cask install sourcetree
    brew cask install textmate
    brew cask install the-unarchiver
    brew cask install vlc

    # QuickLook plugins
    brew cask install provisioning
    brew cask install qlstephen # View plain text files without a file extension
    brew cask install qlmarkdown

    # Fonts
    brew tap caskroom/fonts
    brew cask install font-fira-code

	echo "✅  finished configuring 'cask'"
}
