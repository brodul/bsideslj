#! /bin/bash
sleep 40
cd /home/pi/bsideslj
git pull
chromium --kiosk --incognito index.html &
