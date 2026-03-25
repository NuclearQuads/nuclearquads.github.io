Pinout (GPIO numbers)
2 SDA to INA219
3 SDA to INA219
4 Fan Enable
17 Reset STM
27 Boot0 STM
10 LED Strip (MOSI)
9 ESP UART TX
11 ESP RTS
19 Power button
26 Power LED
14 TX to STM
15 RX to STM
24 STM PB0
25 PCB Resistor
8 ESP UART RX
16 ESP Boot

Testing List (Try on Pi Zero 2, Pi 3, Pi 4, Pi 5)
  RXs give RSSI and change channel
  LED strip works
  ESP backpack works (Pi 4 only)
  Power sensor works
  Fan works
  NuclearHazard wifi works
  Home wifi works

Make small image:
  add `init=/usr/lib/raspi-config/init_resize.sh` to /boot/firmware/cmdline.txt
  make .img from sd card
  place image on shared drive
  from ubuntu:
    wget https://raw.githubusercontent.com/Drewsif/PiShrink/master/pishrink.sh
    chmod +x pishrink.sh
    sudo mv pishrink.sh /usr/local/bin
    sudo ./pishrink.sh -aZ /media/inferno/nh\ images/nh430.img /media/inferno/nh\ images/nh430shrink.img
  flash to sd card with etcher
  upload to google drive
  update link on website

SD Card Testing:
  sudo apt update && sudo apt install agnostics -y
  sh /usr/share/agnostics/sdtest.sh

  Pi 5
    PNY Elite A1 Blue
      Sequential write speed 21905 KB/sec (target 10000) - PASS
      Random write speed 635 IOPS (target 500) - PASS
      Random read speed 2124 IOPS (target 1500) - PASS
    PNY Elite A1 Orange
      Sequential write speed 21832 KB/sec (target 10000) - PASS
      Random write speed 648 IOPS (target 500) - PASS
      Random read speed 2120 IOPS (target 1500) - PASS
    
