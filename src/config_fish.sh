#!/bin/bash

function config_fish
{
  mkdir -p ~/.config/fish
  cp ./src/config.fish ~/.config/fish

  echo "✅  finished configuring 'fish'"
}
