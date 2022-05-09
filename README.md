## Setup

- Clone the script to your machine
- Replace `BLUETOOTH_DEVICE_MAC_ADDRESS` with the **MAC_ADDRESS** of the bluetooth device you want to auto connect
- Move the script to `/etc/profile.d/`

- Add the following command to your startup applications to power on bluetooth on boot
`rfkill unblock bluetooth` 

- That's all

The next time you boot your machine, ubuntu will automatically power bluetooth on and connect to the device.

