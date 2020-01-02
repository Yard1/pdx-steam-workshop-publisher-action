#!/bin/sh

set -e
if df -h | grep -E "shm\s*(([0-9]{3,}M)|([0-9]+G))" > /dev/null; then
  sleep 0
else
  echo "This action required more than 64M of shm size, run this in your workflow before calling the action:"
  echo 'run: |'
  echo '  echo '{ "cgroup-parent": "/actions_job", "default-shm-size": "512M" }' | sudo tee /etc/docker/daemon.json && sudo systemctl reload docker'
  exit 1
fi

cd $GITHUB_WORKSPACE

if [ -z "$INPUT_DESCRIPTIONPATH" ] || [ "$INPUT_DESCRIPTIONPATH" = "" ]; then
  sleep 0
else
  sudo cp "$INPUT_DESCRIPTIONPATH" "/home/steam/description.txt"
fi

sudo cp -R "$INPUT_MODPATH/." /home/steam/mod

sudo -u steam STEAM_APP_ID=394360 STEAM_LOGIN=$INPUT_STEAMLOGIN STEAM_PASSWORD=$INPUT_STEAMPASSWORD PDX_LOGIN=$INPUT_PDXLOGIN PDX_PASSWORD=$INPUT_PDXPASSWORD STEAM_SENTRY_FILE_NAME=$INPUT_STEAMSENTRYFILENAME STEAM_SENTRY_FILE_HEX=$INPUT_STEAMSENTRYFILEHEX GOOGLE_API_CREDENTIALS=$INPUT_GOOGLEAPICREDENTIALS GOOGLE_CLIENT_SECRET=$INPUT_GOOGLECLIENTSECRET /entrypoint.sh
