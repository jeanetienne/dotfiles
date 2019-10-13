#!/bin/bash

function config_xcode
{
  cp ./src/Jean-Etienne\'s\ Key\ Bindings.idekeybindings ~/Library/Developer/Xcode/UserData/KeyBindings/
  cp ./src/IDETemplateMacros.plist ~/Library/Developer/Xcode/UserData/
  cp ./src/Breakpoints_v2.xcbkptlist ~/Library/Developer/Xcode/UserData/xcdebugger/

  echo "✅  finished configuring 'Xcode'"
}
