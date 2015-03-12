#! /bin/bash
sleep 10
cd /home/pi/bsideslj
git pull
chromium --kiosk --incognito index.html &
