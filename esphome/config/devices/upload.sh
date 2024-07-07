#!/bin/bash

# entrance-roof: 192.168.10.159
# livingroom-roof: 192.168.10.158

device_name=$1
device_ip=$1

echo "Compiling the ESPHome configuration"
esphome compile "$device_name".yaml
esphome upload "$device_name".yaml --device "$device_ip"