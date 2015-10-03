#!/bin/bash

function config_mail
{
  # Disable send and reply animations in Mail.app
  defaults write com.apple.mail DisableReplyAnimations -bool TRUE
  defaults write com.apple.mail DisableSendAnimations -bool TRUE

  # Display emails in threaded mode, sorted by date (oldest at the top)
  defaults write com.apple.mail DraftsViewerAttributes -dict-add "DisplayInThreadedMode" -string "yes"
  defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortedDescending" -string "yes"
  defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortOrder" -string "received-date"

  # Disable inline attachments (just show the icons)
  defaults write com.apple.mail DisableInlineAttachmentViewing -bool TRUE

  # Disable automatic spell checking
  defaults write com.apple.mail SpellCheckingBehavior -string "NoSpellCheckingEnabled"

  echo "✅  finished configuring 'Mail'"
}
