# Hardware Setup

## Required Parts

Along with the kit, you should also have the following ready to use:
- Raspberry Pi (Version 3 or Zero 2 minimum)
- 8+GB Micro SD card for the Pi (instructions for installing the OS below)

## Case Printing

### [Get the case file here](https://cad.onshape.com/documents/c21f8ac03c166bed0d6faeab/w/4bf3b280307091cb20025cb6/e/8e522757019b78bf199024ba)

Check your NuclearHazard PCB version, which should be printed on the PCB. The case for version 3 is slightly different than 4+. The link above takes you to the onshape project where the case is always up to date. Find the case version number with your PCB version. Version 3 also has an option for a 40mm or 50mm fan. To download, navigate to the correct version number folder on the **bottom bar**, then right click the "NuclearHazard vX" tab. Click Export. Check "Export unique parts as individual files". Click Export.

When importing the **lid** into your slicer, it should be turned upside down to avoid needing supports.

Print with support only on the completely horizontal overhangs. The PrusaSlicer setting for this is "Overhang threshold". Set it to 1. Using a "Top/bottom contact Z distance" of twice your layer height (0.4mm for 0.2mm layer height) will make the supports easy to remove.

## Case Installation

There's a "hook" on the inside of the case to hold down the bottom edge of the PCB. Insert the side with the XT60 first, lay the board flat on the standoffs, slide it around until it's under the "hook" and the top screw holes are lined up. Use two of the shortest included screws (4-5mm) to secure. Use a lot of downward pressure to start the screws. Stop tightening as soon as the board is secure.

## RX Installation

To add RXs on your own, I suggest ordering [here](https://www.aliexpress.us/item/2255800077584960.html) or a similar listing. Start by tinning one pad of the RX carrier with solder. Be very careful to not get any solder on the connector pads. Align the RX with all the pads and reheat the tinned pad. That'll hold it still while you solder the rest of the pads.

Some of the RX carrier cards included with Version 3 and 4 need to be inserted backwards. They can be identified by the bigger alignment dot, or if the RXs aren't changing channels. This has since been fixed and the carrier cards included with Version 5 can be aligned normally.

## Pi Installation

Make sure the pins are aligned when installing the Pi. It's easy to be off by one pin, and that could cause catastrophic damage to your Pi or NuclearHazard. Press the Pi all the way down.

# Software Setup

Start with a modern, fresh Raspberry Pi OS installation. [Raspberry Pi OS installation instructions here.](piosinstallation.md) Make sure to use NuclearHazard as the username for easy setup later.

### [Use these commands](pisetup.md)

Run each block and check for errors as you go.

This setup will do the following:

- Install prerequisites

- Install RotorHazard server

- Set up the Pi to act as a wifi access point when not in range of the network you entered in the OS setup (good for practice, but maybe not for events)

The default passwords are on the [Quick Reference](quickreference.md) page.

## Updating RotorHazard

If you used my script to set up the Pi, update by powering on in range of the wifi you originally set up in the Pi Imager. Then you'll need to find the IP of the Pi (the "inet" iOS app is what I use). SSH to that IP (use password in the [Quick Reference](quicksheet.md)) and use the [updating instructions in the RotorHazard docs](https://github.com/RotorHazard/RotorHazard/blob/main/doc/Software%20Setup.md#updating-an-existing-installation).

If you need to update over the Pi's "NuclearHazard" hotspot, download the RotorHazard zip, upload it as temp.zip with your SSH program (cyberduck/filezilla/winscp) then use the same updating instructions minus the wget command.

## POE

Watch the video [here](https://www.youtube.com/watch?v=APZOm1ioYCY). 

Suggested POE Splitter:

[aliexpress](https://www.aliexpress.us/item/3256804960597428.html)

[amazon](https://www.amazon.com/Splitter-Compliant-Surveillance-5-5x2-1mm-PS5712TG/dp/B08HS4NT13/)

## LED Strip

The pinout for the LED strip connector is like this.

![LED Strip Pinout](images/led.jpg)