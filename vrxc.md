add this to boot/firmware/config.txt if not already present

```
[pi4]
dtoverlay=uart4

[pi5]
dtoverlay=uart3-pi5
dtparam=spi=off
```

## do this

```
python -m pip install esptool
cd ~
sudo rm -r RotorHazard/src/server/plugins/VRxC_ELRS
wget https://github.com/i-am-grub/VRxC_ELRS/releases/download/v1.0.0/VRxC_ELRS.zip
unzip VRxC_ELRS.zip
cp -r VRxC_ELRS RotorHazard/src/server/plugins/
rm -r VRxC_ELRS
rm VRxC_ELRS.zip
```

### download the 4 backpack bin files (only for nuclearhazard)
- [boot_app0.bin](files/backpack/boot_app0.bin)
- [bootloader.bin](files/backpack/bootloader.bin)
- [firmware.bin](files/backpack/firmware.bin)
- [partitions.bin](files/backpack/partitions.bin)
- copy all files to your Pi's home folder

put [this script](files/flashbackpack.py) in your home folder

### or if connected to the internet
do these
```
wget nuclearquads.github.io/files/flashbackpack.py
wget nuclearquads.github.io/files/backpack/boot_app0.bin
wget nuclearquads.github.io/files/backpack/bootloader.bin
wget nuclearquads.github.io/files/backpack/firmware.bin
wget nuclearquads.github.io/files/backpack/partitions.bin
```

## do 

```
sudo systemctl stop rotorhazard.service
python flashbackpack.py
sudo systemctl start rotorhazard.service
```

## also update your goggle backpack to the master backpack branch