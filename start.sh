#! /bin/bash
sleep 10
cd /home/pi/bsideslj
git pull
chromium-browser --kiosk --incognito index.html &
