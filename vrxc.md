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

to get the latest beta version of RH
```
cd ~
wget https://codeload.github.com/RotorHazard/RotorHazard/zip/v4.1.0-beta.4 -O temp.zip
unzip temp.zip
mv RotorHazard RotorHazard.old
mv RotorHazard-4.1.0-beta.4 RotorHazard
rm temp.zip
cp RotorHazard.old/src/server/config.json RotorHazard/src/server/
cp RotorHazard.old/src/server/database.db RotorHazard/src/server/
cd ~/RotorHazard/src/server
pip install --upgrade --no-cache-dir -r requirements.txt
```

build elrs backpack files with elrs configurator (very sad, I know)

- select the backpack tab on the left
- select the git branch tab on the top
- select master for the git branch
- select RotorHazard for the device category
- build
- copy all files to your Pi's home folder


put [this script](files/flashbackpack.py) in your home folder

do ```python flashbackpack.py```