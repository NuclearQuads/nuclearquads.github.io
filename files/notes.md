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
  make .img from sd card
  place image on shared drive
  from ubuntu:
    wget https://raw.githubusercontent.com/Drewsif/PiShrink/master/pishrink.sh
    chmod +x pishrink.sh
    sudo mv pishrink.sh /usr/local/bin
    pishrink.sh -aZ nh430.img nh430shrink.img
  flash to sd card with etcher
  upload to google drive
  update link on website