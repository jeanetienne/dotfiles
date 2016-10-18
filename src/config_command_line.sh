#!/bin/bash

function config_command_line
{
    # Homebrew
#    mkdir -p ~/Documents/Homebrew
#    curl -L https://github.com/Homebrew/homebrew/tarball/master | tar xz --strip 1 -C ~/Documents/Homebrew
#    sudo mkdir -p /usr/local/bin
#    sudo ln -s ~/Documents/Homebrew/bin/brew /usr/local/bin/brew

    # Homebrew
    brew doctor
    brew update

    # CLI apps
    brew install ruby
    brew install git
    brew install fish
    brew install carthage
    brew install caskroom/cask/brew-cask

	echo "✅  finished configuring 'command line'"
}
