#!/bin/sh

set -e

df -h | grep shm

export STEAM_APP_ID=394360
export STEAM_LOGIN=$INPUT_STEAMLOGIN > /dev/null
export STEAM_PASSWORD=$INPUT_STEAMPASSWORD > /dev/null
export PDX_LOGIN=$INPUT_PDXLOGIN > /dev/null
export PDX_PASSWORD=$INPUT_PDXPASSWORD > /dev/null
export STEAM_SENTRY_FILE_NAME=$INPUT_STEAMSENTRYFILENAME > /dev/null
export STEAM_SENTRY_FILE_HEX=$INPUT_STEAMSENTRYFILEHEX > /dev/null
export GOOGLE_API_CREDENTIALS=$INPUT_GOOGLEAPICREDENTIALS > /dev/null
export GOOGLE_CLIENT_SECRET=$INPUT_GOOGLECLIENTSECRET > /dev/null

cd $GITHUB_WORKSPACE

if [ -z "$INPUT_DESCRIPTIONPATH" ] || [ "$INPUT_DESCRIPTIONPATH" = "" ]; then
  sleep 0
else
  sudo cp "$INPUT_DESCRIPTIONPATH" "/home/steam/description.txt"
fi

sudo cp -R "$INPUT_MODPATH/." /home/steam/mod

sudo ls /home/steam/mod
exit 1
sudo su -c /entrypoint.sh steam
