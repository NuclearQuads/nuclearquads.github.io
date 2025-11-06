### Prep the Pi

add this to boot/firmware/config.txt if not already present

```
[pi4]
dtoverlay=uart4

[pi5]
dtoverlay=uart3-pi5
dtparam=spi=off
```

### Build firmware

Use the [ELRS Web Flasher](https://expresslrs.github.io/web-flasher/) to build and download the firmware.

### Load firmware files onto the Pi

Using [scp](https://www.raspberrypi.com/documentation/computers/remote-access.html#scp), MobaXterm, or FileZilla, upload the 4 firmware files to your Pi's home folder:

- boot_app0.bin
- bootloader.bin
- firmware.bin
- partitions.bin

### Load the flashing script onto the Pi

Put [this script](../files/flashbackpack.py) in your home folder

### Flash the backpack

```
sudo systemctl stop rotorhazard.service
python flashbackpack.py
sudo systemctl start rotorhazard.service
```