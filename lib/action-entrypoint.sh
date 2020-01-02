#!/bin/sh

set -e
if df -h | grep -E "shm\s*(([0-9]{3,}M)|([0-9]+G))"; then
  sleep 0
else
  echo "This action required more than 64M of shm size, run this in your workflow before calling the action:"
  echo 'run: |'
  echo '  echo '{ "cgroup-parent": "/actions_job", "default-shm-size": "512M" }' | sudo tee /etc/docker/daemon.json && sudo systemctl reload docker'
  exit 1
fi

export STEAM_APP_ID=394360
export STEAM_LOGIN=$INPUT_STEAMLOGIN 
export STEAM_PASSWORD=$INPUT_STEAMPASSWORD 
export PDX_LOGIN=$INPUT_PDXLOGIN 
export PDX_PASSWORD=$INPUT_PDXPASSWORD 
export STEAM_SENTRY_FILE_NAME=$INPUT_STEAMSENTRYFILENAME 
export STEAM_SENTRY_FILE_HEX=$INPUT_STEAMSENTRYFILEHEX 
export GOOGLE_API_CREDENTIALS=$INPUT_GOOGLEAPICREDENTIALS 
export GOOGLE_CLIENT_SECRET=$INPUT_GOOGLECLIENTSECRET 
echo "$STEAM_LOGIN"
cd $GITHUB_WORKSPACE

if [ -z "$INPUT_DESCRIPTIONPATH" ] || [ "$INPUT_DESCRIPTIONPATH" = "" ]; then
  sleep 0
else
  sudo cp "$INPUT_DESCRIPTIONPATH" "/home/steam/description.txt"
fi

sudo cp -R "$INPUT_MODPATH/." /home/steam/mod

sudo su -c /entrypoint.sh steam
