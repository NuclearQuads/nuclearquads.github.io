# NuclearHazard Timer

The NuclearHazard timer by NuclearQuads represents the next generation of RotorHazard timer hardware.

Currently taking pre-orders expected to ship Oct 23!

### Pre-Order Info:

The timers are not in stock or even produced yet. Since it's hard know how many to get manufactured, I will take preorders through the end of September. Then I'll submit them for manufacturing. I expect to have them ready to ship by October 23, 2023.

### Store:

Buy the base timer boards, RXs, and cases [here!](https://nuclearquads.etsy.com)

### Cases

[This](https://cad.onshape.com/documents/c21f8ac03c166bed0d6faeab/w/4bf3b280307091cb20025cb6/e/bbe83f4e5cd978acfdd07828) is the project where the case is made. There are multiple versions of the case to match the small changes on the PCBs. Match up the case version number with your PCB version (printed on the board). Version 3 also has an option for a 40mm or 50mm fan. To download, navigate to the correct version number folder on the bottom bar, then right click the "NuclearHazard vX" tab. Click Export. Check "Export unique parts as individual files". Click Export.

Print with supports only under the fully horizontal overhangs. In PrusaSlicer, this can be done by setting overhang angle to 1 degree.

### Pi configuration

The suggested configuration for a Pi can be found <a href="files/pisetup.sh">here</a>.

This will do the following:

- Install prerequisites

  - The java version installed by this will not work on the Pi Zero

- Install RotorHazard server

- Set up the Pi to act as a wifi access point (good for practice, but not events)

  - SSID: NuclearHazard Password: wegozoom

  - Can be accessed (SSH or RH UI) with 10.20.1.1

The RotorHazard UI's admin page will be using the default username and password (admin, rotorhazard)

