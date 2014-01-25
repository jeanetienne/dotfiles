#!/bin/bash

source ./src/test.sh
source ./src/apps.sh
source ./src/config.sh

COMPUTER_NAME="Jean-Étienne's MacBook Pro"
LANGUAGE="en"
LOCALE="en_AU@currency=AUD"
MEASUREMENT_UNITS="Centimeters"
TIME_ZONE="Australia/Melbourne"

function main
{
  while true; do
    echo "Deployment script, current settings:"
    echo "Computer name:      $COMPUTER_NAME"
    echo "Language:           $LANGUAGE"
    echo "Locale:             $LOCALE"
    echo "Measurement units:  $MEASUREMENT_UNITS"
    echo "Time zone:          $TIME_ZONE"
    echo ""
    echo "Execute script with these settings? (y/n)"
    read -p "$1" ANSWER
    case $ANSWER in
      [Yy]* ) launch_scripts;;
      [Nn]* ) exit;;
      * ) echo "Please answer y or n.";;
    esac
  done
}

function launch_scripts
{
  # Ask for root password upfront
  sudo -v

  # Installing apps
  # apps
  
  # Main setup
  # config "$COMPUTER_NAME" "$LANGUAGE" "$LOCALE" "$MEASUREMENT_UNITS" "$TIME_ZONE"

  # Test script
  test_script
}

# Executing the main script
main