#!/usr/bin/bash

deviceId=$1

while [[ $deviceId = '' ]]; do
    read -p 'Enter device id to connect: ' deviceId
done

bluetoothctl scan on
bluetoothctl remove$deviceId
bluetoothctl trust $deviceId
bluetoothctl pair $deviceId
bluetoothctl connect $deviceId
