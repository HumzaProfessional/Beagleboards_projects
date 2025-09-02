#!/bin/bash
# bas
# Blink BeagleBone user LED usr0

LED="/sys/class/leds/beaglebone:green:usr0/brightness" # sets 

while true; do
  echo 1 | sudo tee $LED > /dev/null #
  sleep 1 # to give a simple delay
  echo 0 | sudo tee $LED > /dev/null
  sleep 1
done
