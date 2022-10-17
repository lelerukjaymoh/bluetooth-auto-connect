#!/usr/bin/bash

deviceId=$1

while [[ $deviceId = '' ]]; do
    read -p 'Enter device id to connect: ' deviceId
done

# remove bluetooth folder
sudo rm -rf /var/lib/bluetooth

# restart bluetooth service
sudo service bluetooth restart

bluetoothctl remove $deviceId
bluetoothctl trust $deviceId
bluetoothctl pair $deviceId
bluetoothctl connect $deviceId
