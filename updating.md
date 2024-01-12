# Updating the RotorHazard installation on a timer

Assuming you used my setup instructions, this will let you update the RotorHazard installation. Method 1 is highly recommended unless you don't have a way to connect the Pi to the internet over the ethernet port.

**Note: The version number 4.0.1 is used as an example, you may need to change it.**

### Method 1: Connect to the internet (highly recommended)


### Method 2: Upload from other computer (for Pis without ethernet)

On a windows computer that has internet access and wifi to connect to the timer's access point:

- Make sure you have a recent python installed (in windows command line run ```python --version``` and look for at least 3.8)

- Download the desired RotorHazard version from [GitHub](https://github.com/RotorHazard/RotorHazard/releases) and store the zip file in "My documents"

- Unzip it but keep the zip

- In a windows command line, run the following
    - ```cd Documents\RotorHazard-4.0.1\RotorHazard-4.0.1\src\server```
    - ```python -m pip download -r requirements.txt --platform=linux_arm64 --no-deps -d requirements```

- Go to the new Documents\RotorHazard-4.0.1\RotorHazard-4.0.1\src\server\requirements folder
    - select all files
    - right click > send to > compressed (zipped) folder
    - name the new zip file requirements.zip
    - move/copy requirements.zip to 'My documents"

- Install and open [MobaXterm](https://mobaxterm.mobatek.net/download-home-edition.html) (or use another ssh/sftp program)

- Connect to the timer's NuclearHazard wifi

- In mRemoteNG, create a new connection with the following info:
    - Hostname/IP: 10.42.0.1
    - User name: NuclearHazard
    - Password: nuclearhazard
    - Protocol: SSH version 2
    
- Drag and drop the files from the left to the right to copy them to the pi
    - RotorHazard-4.0.1.zip
    - requirements.zip

- In WinSCP open the Pi command line with Ctrl+Shift+T

- Enter the following commands one-by-one
    - ```sudo systemctl stop rotorhazard```
    - ```unzip RotorHazard-4.0.1.zip```
    - ```mv RotorHazard RotorHazard.old```
    - ```mv RotorHazard-4.0.1 RotorHazard```
    - ```rm RotorHazard-4.0.1.zip```
    - ```cp RotorHazard.old/src/server/config.json RotorHazard/src/server/```
    - ```cp RotorHazard.old/src/server/database.db RotorHazard/src/server/```
    - ```cp -r ~/RotorHazard.old/src/server/venv/ ~/RotorHazard/src/server/```
    - ```cd ~/RotorHazard/src/server```
    - ```unzip ~/requirements.zip -d requirements```
    - ```source venv/bin/activate```
    - ```pip install --no-index --find-links ./requirements -r requirements.txt```

- Reboot or ```sudosystemctl start rotorhazard```