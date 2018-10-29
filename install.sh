/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install node
npm -g install homebridge --unsafe-perm
npm -g install homebridge-broadlink-rf
npm -g install homebridge-nest
npm -g install homebridge-weather-plus
cp ./config.json ~/.homebridge/config.json

cp com.homebridge.server.plist /Library/LaunchDaemons/com.homebridge.server.plist
sudo chown $(whoami) ~/Library/LaunchAgents
sudo chown $(whoami) ~/Library/LaunchAgents/com.homebridge.server.plist
sudo chmod 700 ~/Library/LaunchAgents
sudo chmod 600 ~/Library/LaunchAgents/com.homebridge.server.plist

reboot
