#!/bin/bash

source ./src/test.sh
source ./src/apps.sh
source ./src/config.sh

function launch_scripts
{
  # Ask for root password upfront
  sudo -v

  # Installing apps
  apps
  
  # Main setup
  config
}

while true; do
  echo "Make sure you have installed Xcode and launched it once."
  echo ""
  echo "Execute script with these settings? (y/n)"
  read -p "$1" ANSWER
  case $ANSWER in
    [Yy]* ) launch_scripts; exit;;
    [Nn]* ) exit;;
    * ) echo "Please answer y or n.";;
  esac
done
