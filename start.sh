#! /bin/bash
cd /home/pi/bsideslj
git pull
chromium --kiosk --incognito index.html &
