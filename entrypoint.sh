#!/bin/bash

MODIFIED_STARTUP=$(eval echo "$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g')")

echo "$ cd /home/container"
cd /home/container

echo "-- Starting Lavalink..."
echo "$ ${MODIFIED_STARTUP}"

${MODIFIED_STARTUP}
