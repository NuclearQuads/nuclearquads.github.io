## ESP32 Pinout Wrong

In PCB versions 6 and lower, the footprint for the ESP32 is wrong so it will never work. If you want to use an ESP32 on these boards, you will probably need to solder wires to the bottom of the Pi header. This is expected to be fixed in version 7.

## RX cards don't always connect the first time

If your timer doesn't show all the RXs, try replugging, or just pushing the carrier card into the connector harder, then replug the timer

## Disabling the NuclearHazard wifi or connecting to your home network

Over SSH, do ```sudo nmtui``` and use that to connect to your home network.