add this to boot/firmware/config.txt

```
[pi4]
dtoverlay=uart4

[pi5]
dtoverlay=uart3-pi5
```

do this

```
python -m pip install esptool
```

```
cd ~
sudo rm -r RotorHazard/src/server/plugins/VRxC_ELRS
wget https://github.com/i-am-grub/VRxC_ELRS/releases/download/v1.0.0/VRxC_ELRS.zip
unzip VRxC_ELRS.zip
cp -r VRxC_ELRS RotorHazard/src/server/plugins/
rm -r VRxC_ELRS
rm VRxC_ELRS.zip
```

```
cd ~
wget https://codeload.github.com/RotorHazard/RotorHazard/zip/v4.1.0-beta.2 -O temp.zip
unzip temp.zip
mv RotorHazard RotorHazard.old
mv RotorHazard-4.1.0-beta.2 RotorHazard
rm temp.zip
cp RotorHazard.old/src/server/config.json RotorHazard/src/server/
cp RotorHazard.old/src/server/database.db RotorHazard/src/server/
```

flash the esp with [this script](files/flashbackpack.py)