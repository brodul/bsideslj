#! /bin/bash
sleep 10
cd /home/pi/bsideslj
git pull
chromium-browser --kiosk \
  --disable \
  --disable-translate \
  --disable-infobars \
  --disable-suggestions-service \
  --disable-save-password-bubble \
--incognito index.html &
