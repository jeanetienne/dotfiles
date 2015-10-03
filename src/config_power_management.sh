#!/bin/bash

function config_power_management
{
  # Hibernation mode: powers memory during sleep for faster awake
  sudo pmset -a hibernatemode 3

  # Don't dim screen when chaging power source
  sudo pmset -a lessbright 0

  # Don't dim screen before putting display to sleep
  sudo pmset -a halfdim 0

  # Don't awake when changing power source
  sudo pmset -a acwake 0

  # Awake when opening lid
  sudo pmset -a lidwake 1

  # Enable hibernate after a long sleep
  sudo pmset -a autopoweroff 1

  # Delay before hibernation
  sudo pmset -a autopoweroffdelay 7200

  # Disable standby mode
  sudo pmset -a standby 0

  # Set standby delay to 1 day
  sudo pmset -a standbydelay 86400

  # Disable dropping FileVault keys when hibernating
  sudo pmset -a destroyfvkeyonstandby 0

  # Wake up on network "magic packet"
  sudo pmset -a womp 1

  # Keep awake if a tty session is on
  sudo pmset -a ttyskeepawake 1

  # Enable sudden motion sensor
  sudo pmset -a sms 1

  # Delay to put drive to sleep
  sudo pmset -a disksleep 20

  # Display & computer sleep time for AC charger mode
  sudo pmset -c displaysleep 15
  sudo pmset -c sleep 0

  # Display & computer sleep time for battery mode
  sudo pmset -b displaysleep 5
  sudo pmset -b sleep 10
  
  echo "✅  finished configuring 'Power Management'"
}
