#!/bin/bash

function config_aperture
{
  rm -rf ~/Library/Application\ Support/Aperture
  cp -R ./src/Aperture ~/Library/Application\ Support/ 

  echo "✅  finished configuring 'Aperture'"
}
