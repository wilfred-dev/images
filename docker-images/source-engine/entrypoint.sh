#!/bin/bash

cd /server || exit

# update source erver
if [ -n "${SRCDS_APPID}" ]; then
    ./steamcmd/steamcmd.sh +login anonymous +force_install_dir /server +app_update "${SRCDS_APPID}" +quit
fi
