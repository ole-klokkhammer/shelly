#!/bin/bash

source venv/bin/activate  


# entrance-roof: 192.168.10.159
# livingroom-roof: 192.168.10.158
# dining-room: /dev/ttyUSB0
# kitchen-roof: /dev/ttyUSB0

device_name=$1
device_address=$2

echo "Compiling the ESPHome configuration"
echo "$device_name"
echo "$device_address"

esphome compile ./devices/"$device_name".yaml
esphome upload ./devices/"$device_name".yaml --device "$device_address"