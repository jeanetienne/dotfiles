#!/bin/bash

source ./src/apps.sh
source ./src/config.sh

# Ask for root password upfront
sudo -v

# Installing apps
apps

# Main setup
config

echo "Deploy script finished."
