---
layout: default
title: RotorHazard Usage
---

# Quick Reference

## Passwords

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

Use this to connect with SSH or to access the web interface.

`10.42.0.1`

## Connecting to your home network

- Over SSH, do ```sudo nmtui```
- Go to Activate a connection
- Select your network
- Enter your password if needed
- Reboot/replug the timer
- Use a network scanner (iNet app for iOS) to find the Pi's IP

# Simple Timing Process

From the RotorHazard main page, go to the Format page. You may need to log in with the info above. Add a pilot for each pilot you want to time, and enter the names. Skip adding a class. Add a Heat, no changes need to be made to the Heat.

Go to the Run page. Select the Heat you added from the dropdown. Turn up your volume to hear the tones. Click Start and fly the course. Don’t worry about it missing your laps yet, we’ll calibrate later. When you’re done, click Save.

Go to the Marshal page. Select the pilot that was flying from the dropdown. Drag the top line to just below the highest points of the graph, and drag the bottom line to just above the lowest points. Click Commit Changes, and that will save the calibration.

Go back to the Run page and keep flying!
