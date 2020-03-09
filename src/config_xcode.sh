#!/bin/bash

function config_xcode
{
  mkdir -p ~/Library/Developer/Xcode/UserData/KeyBindings/
  cp ./src/Jean-Etienne\’s\ Key\ Bindings.idekeybindings ~/Library/Developer/Xcode/UserData/KeyBindings/

  mkdir -p ~/Library/Developer/Xcode/UserData/
  cp ./src/IDETemplateMacros.plist ~/Library/Developer/Xcode/UserData/

  mkdir -p ~/Library/Developer/Xcode/UserData/xcdebugger/
  cp ./src/Jean-Etienne\’s\ Breakpoints.xcbkptlist ~/Library/Developer/Xcode/UserData/xcdebugger/

  echo "✅  finished configuring 'Xcode'"
}
