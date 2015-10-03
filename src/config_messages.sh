#!/bin/bash

function config_messages
{
  # Disable automatic emoji substitution (i.e. use plain text smileys)
  defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticEmojiSubstitutionEnablediMessage" -bool FALSE

  # Disable smart quotes as it's annoying for messages that contain code
  defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticQuoteSubstitutionEnabled" -bool FALSE

  # Disable continuous spell checking
  defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool FALSE

  echo "✅  finished configuring 'Messages'"
}
