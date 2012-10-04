#!/bin/bash

cd ../commotion-openwrt/openwrt

if ! grep -q commotionchat feeds.conf; then
  echo "adding commotion chat package feed..."
  echo "src-link commotionchat ../../../commotion-chat" >> feeds.conf
fi

./scripts/feeds update -a
./scripts/feeds install -a
for i in $(ls -d ../../commotion-chat/); do scripts/feeds install $i; done

