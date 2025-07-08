---
layout: default
title: Pi OS Installation
---

# Pi OS Setup

![Pi Imager](../images/pi_imager.PNG)

Use the following instructions to flash the SD card with <a href="https://www.raspberrypi.com/software/" target="_blank">Raspberry Pi imager</a>.

Use [Imager v1.8.5](https://github.com/raspberrypi/rpi-imager/releases/tag/v1.8.5) because any newer doesn't allow upper-case in the username, and the rest of my installation scripts require the username to be "NuclearHazard".

## Select the OS

If you never plan to plug in a monitor directly to the Pi, use the Lite version.

If you're using a Pi Zero 1, Pi 1, or Pi 2, you need a 32-bit OS. Otherwise use 64-bit.

## Select the options

These are the recommended options. The username must be NuclearHazard to easily complete the later setup. The Wi-Fi settings are important for boards without ethernet so you can still SSH to them.

![Options](../images/flashingoptions.PNG)