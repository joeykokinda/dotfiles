#!/bin/bash

chromium --kiosk --app=http://localhost:3000 &
CHROME_PID=$!
sleep 1
hyprctl dispatch fullscreen
wait $CHROME_PID
