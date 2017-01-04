#!/bin/bash

function config_xcode
{
    # Install Xcode
    mas install 497799835

    # Accept Xcode license
    sudo xcodebuild -license accept

	echo "✅  finished configuring 'Xcode'"
}
