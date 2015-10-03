#!/bin/bash

function config_fish
{
  mkdir -p ~/.config/fish
  cp ./config.fish ~/.config/fish

  echo "✅  finished configuring 'fish'"
}
