#!/bin/bash

function config_hammerspoon
{
    mkdir -p ~/.hammerspoon
    cp ./src/init.lua ~/.hammerspoon/init.lua

	echo "✅  finished configuring 'hammerspoon'"
}
