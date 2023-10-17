# Hardware Setup

### Case Printing

Check your NuclearHazard PCB version, which should be printed on the PCB. So far I've sold Version 3 and Version 4. The cases for each are slightly different. [This](https://cad.onshape.com/documents/c21f8ac03c166bed0d6faeab/w/4bf3b280307091cb20025cb6/e/bbe83f4e5cd978acfdd07828) is the project where the case is maintained. Find the case version number with your PCB version. Version 3 also has an option for a 40mm or 50mm fan. To download, navigate to the correct version number folder on the bottom bar, then right click the "NuclearHazard vX" tab. Click Export. Check "Export unique parts as individual files". Click Export.

When importing the lid into your slicer, it's best to turn it upside down to avoid needing supports.

Print with support only on the completely horizontal overhangs. The PrusaSlicer setting for this is "Overhang threshold". Set it to 1. Using a "Top/bottom contact Z distance" of twice your layer height will make the supports easy to remove.

### Case Installation

There's a "hook" on the inside of the case to hold down the bottom edge of the PCB. Insert the side with the XT60 first, lay the board flat on the standoffs, slide it around until it's under the "hook" and the top screw holes are lined up. Use two of the shortest included screws (4-5mm) to secure. Use a lot of downward pressure to start the screws. Stop tightening as soon as the board is secure.

### RX Installation

To add RXs on your own, I suggest ordering [here](https://www.aliexpress.us/item/2255800077584960.html). Start by tinning one pad of the RX carrier with solder. Then align the RX and reheat that pad. That'll hold it still while you solder the rest of the pads.

Some of the RX carrier cards included with Version 3 and 4 need to be inserted backwards. They can be identified by the bigger alignment dot, or if the RXs aren't changing channels. This has since been fixed and the carrier cards included with Version 5 can be aligned normally.

### Pi Installation

Make sure the pins are aligned when installing the Pi. It's easy to be off by one pin, and that could cause catastrophic damage to your Pi or NuclearHazard. Press the Pi all the way down.

### POE

Watch the video [here](). 

Suggested POE Splitter links:

[aliexpress](https://www.aliexpress.us/item/3256804960597428.html)

[amazon](https://www.amazon.com/Splitter-Compliant-Surveillance-5-5x2-1mm-PS5712TG/dp/B08HS4NT13/)

# Software Setup

Run each block (the whole block) in [this file](pisetup.md) and check for errors as you go. If there are any errors, let me know so I can fix them, but also a quick google search should easily solve most of them.

This setup will do the following:

- Install prerequisites

  - The java version installed by this will not work on the Pi Zero

- Install RotorHazard server

- Set up the Pi to act as a wifi access point (good for practice, but maybe not for events)

The default passwords are on the [Quick Reference](quicksheet.md) page.