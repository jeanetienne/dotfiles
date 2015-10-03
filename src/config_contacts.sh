#!/bin/bash

function config_contacts
{
  # Enable the debug menu in Address Book
  defaults write com.apple.addressbook ABShowDebugMenu -bool TRUE

  echo "✅  finished configuring 'Contacts'"
}
