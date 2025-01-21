---
layout: default
title: RotorHazard Usage
---

# Quick Reference

## Battery input voltage

All NuclearHazard timers accept 2-5S input (7-21V)

The NuclearHazard Fission can also be powered over 48V PoE (802.3af)

LED strip note: My LED strip takes a max of 20mW per LED, and the rest of the timer takes 6500mW max. This means with 802.3af's limit of 15.4W, we have a maximum LED count of (15400mW-6500mW)/20mW = 445 LEDs

## Passwords

Pay attention to the capitalization. Everything is case-sensitive. Note that the username has a capital N AND H.

- Wifi:
    - SSID: `NuclearHazard`
    - Password: `nuclearhazard`
- SSH Command Line:
    - Username: `NuclearHazard`
    - Password: `nuclearhazard`
- RH Admin:
    - Username: `NuclearHazard`
    - Password: `nuclearhazard`

## Address when connected to the NuclearHazard wifi

Use one of these addresses to connect with SSH or to access the web interface.

`10.42.0.1` or `rotorhazard.local`

## Connecting over Ethernet (Cable directly between Pi and PC)

Instructions coming soon

## Connecting to your home network (works on my 4.2.1+ images or setup script)

- Connect to the NuclearHazard network and start a SSH session
- Open the wifi_config file by doing `nano wifi_config.txt`
- Put your wifi name on the first line and your wifi password on the second line
- Save and close the file by doing `ctrl+o` then `ctrl+x`
- Reboot by running `sudo reboot`
- Use a network scanner (iNet app for iOS) to find the Pi's IP or try `rotorhazard.local`

# Simple Timing Process

From the RotorHazard main page, go to the Format page. You may need to log in with the info above. Add a pilot for each pilot you want to time, and enter the names. Skip adding a class. Add a Heat, no changes need to be made to the Heat.

Go to the Run page. Select the Heat you added from the dropdown. Turn up your volume to hear the tones. Click Start and fly the course. Don’t worry about it missing your laps yet, we’ll calibrate later. When you’re done, click Save.

Go to the Marshal page. Select the pilot that was flying from the dropdown. Drag the top line to just below the highest points of the graph, and drag the bottom line to just above the lowest points. Click Commit Changes, and that will save the calibration.

Go back to the Run page and keep flying!

# Updating RotorHazard

If you used my script to set up the Pi, update by [SSHing](ssh) to the timer and use the <a href="https://github.com/RotorHazard/RotorHazard/blob/main/doc/Software%20Setup.md#updating-an-existing-installation" target="_blank">updating instructions in the RotorHazard docs</a> or, if I have a pre-made OS image on the [flashing page](../troubleshooting/flash.md), reflash the SD card with the newer version.

# Battery Voltage Monitoring and Alert

The Core V8 and all Fission timers have a built-in power monitor. This can be seen in the "Status" dropdown in RotorHazard, but if you'd like an alert when your battery voltage gets low, install and setup [this sensor monitor plugin](https://github.com/Aaronsss/RH-sensor-monitor) according to the instructions. Make sure to follow them all.