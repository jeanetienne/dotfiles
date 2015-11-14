#!/bin/bash

source ./src/config.sh

# Ask for root password upfront
sudo -v

# Main setup
config

echo "✅ Deploy script finished."
