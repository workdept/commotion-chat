#!/binbash

cd ../commotion-openwrt

if ! grep -q commotion-chat feeds.conf; then
  echo "adding commotion chat package feed..."
  echo "src-link commotion-chat ../../../commotion-chat" >> feeds.conf
fi

./scripts/feeds update -a
./scripts/feeds install -a
for i in $(ls -d ../../commotion-chat/); do scripts/feeds install $i; done

