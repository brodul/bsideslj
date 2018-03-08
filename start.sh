#! /usr/bin/env bash
chromium () {
chromium-browser --kiosk \
  --disable \
  --disable-translate \
  --disable-infobars \
  --disable-suggestions-service \
  --disable-save-password-bubble \
--incognito index.html &
}

sleep 10
pushd /home/pi/bsideslj
git pull

chromium

REVISION=$(git rev-parse HEAD)

while :; do
  OLD_REVISION=$REVISION
  sleep 120
  git pull
  REVISION=$(git rev-parse HEAD)
  if [ $REVISION != $OLD_REVISION ]; then
    echo "Change detected"
    WID=$(xdotool search --onlyvisible --class chromium|head -1)
    xdotool windowactivate ${WID}
    xdotool key ctrl+F5
  fi

done
