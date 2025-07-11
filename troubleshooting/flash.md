---
layout: default
title: SD Card Flashing
---

# Flash NuclearHazard SD Card From Image

This will erase all settings and data, but return your timer to a working, up-to-date state.

## Downloads

[Etcher](https://etcher.balena.io/#download-etcher)

These are large files so they may take a while to download.

### Recommended

<a href="https://github.com/NuclearQuads/nuclearquads.github.io/releases/download/RH4.3.0/nh430.img.zip" target="_blank">NuclearHazard 4.3.0 SD Card Image</a>

### Old Versions

<a href="https://drive.google.com/file/d/1-0wvB4UB75ikpUQoiZs9ZyMAl8WBjb8d/view" target="_blank">Old: NuclearHazard 4.1.1 SD Card Image</a>

<a href="https://drive.google.com/file/d/1YLG11zD9N2XQsYEvpHgl5F2llO-r19B6/view" target="_blank">Old: NuclearHazard 4.2.1 SD Card Image</a>

I will create images for new RotorHazard releases as soon as I can.

## How to flash

- Connect your Pi SD card to your computer
- Install and open Etcher (On a Mac, open it from a Finder window by right clicking and selecting "open")
- Select "Flash  from file"
- Browse for the downloaded SD card image and open it (No need to extract unless error)
- Select "Select target"
- Click the check box next to your SD card then click the "Select 1" button (Do not select a "system drive"!)
- Click the "Flash!" button
- Wait somewhere between 2-10 minutes for it to finish

If Etcher has an error about the image being corrupt, unzip it first, then flash from the extracted file