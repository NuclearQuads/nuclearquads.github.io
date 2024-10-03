#!/bin/bash

# Define the log file name and location
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_FILE="$SCRIPT_DIR/nhpisetup.log"

# Redirect all output to the log file
exec > >(tee -a "$LOG_FILE") 2>&1

# update and install dependencies
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install dhcpcd5 python3.11-venv python3-dev libffi-dev python3-smbus build-essential python3-pip git scons swig python3-rpi.gpio default-jdk-headless libjpeg-dev libopenjp2-7-dev -y
# for VRxC flashing
python -m pip install esptool

# setup pi
sudo raspi-config nonint do_serial_hw 0
sudo raspi-config nonint do_serial_cons 1
sudo raspi-config nonint do_i2c 0
sudo raspi-config nonint do_ssh 0
sudo raspi-config nonint do_spi 0

echo "\
dtoverlay=miniuart-bt
dtparam=i2c_baudrate=75000
dtoverlay=act-led,gpio=24
dtoverlay=gpio-led,gpio=26,label=pwrled,trigger=default-on
dtoverlay=gpio-fan,gpiopin=4
dtparam=act_led_trigger=heartbeat

[pi5]
dtoverlay=uart0-pi5
dtoverlay=i2c1-pi5
dtoverlay=uart3-pi5

dtparam=spi=offgit

[pi4]
dtoverlay=gpio-shutdown,gpio_pin=19,debounce=5000
dtoverlay=uart4

[pi3]
dtoverlay=gpio-shutdown,gpio_pin=19,debounce=5000
core_freq=250

[pi02]
#dtoverlay=gpio-shutdown,gpio_pin=19,debounce=5000
core_freq=250

[all]
" | sudo tee -a /boot/firmware/config.txt

python -m venv --system-site-packages .venv
echo "
VIRTUAL_ENV_DISABLE_PROMPT=1
source ~/.venv/bin/activate" | sudo tee -a ~/.bashrc
source ~/.venv/bin/activate

# official way
wget https://codeload.github.com/RotorHazard/RotorHazard/zip/v4.1.1 -O temp.zip
unzip temp.zip
mv RotorHazard-4.1.1 RotorHazard
rm temp.zip

 # git way
#git clone --depth 1 --branch v4.1.1 https://github.com/RotorHazard/RotorHazard.git
# in case a single commit is needed to fix something
#cd RotorHazard
#git fetch origin a759846b12011a394422af9c00b1b89423a3dd70
#git cherry-pick a759846b12011a394422af9c00b1b89423a3dd70

cd ~/RotorHazard/src/server
pip install -r requirements.txt
pip install pillow
python -c "import Config; Config.Config(None)"
sed -i 's/"ADMIN_USERNAME": "admin"/"ADMIN_USERNAME": "NuclearHazard"/' config.json
sed -i 's/"ADMIN_PASSWORD": "rotorhazard"/"ADMIN_PASSWORD": "nuclearhazard"/' config.json
sed -i 's/"SHUTDOWN_BUTTON_GPIOPIN": 18/"SHUTDOWN_BUTTON_GPIOPIN": 19/' config.json
sed -i 's/"hue_0": "212"/"hue_0": "100"/' config.json
sed -i 's/"sat_0": "55"/"sat_0": "75"/' config.json
sed -i 's/"timerName": "RotorHazard"/"timerName": "NuclearHazard"/' config.json
cd ~

echo "[Unit]
Description=RotorHazard Server
After=multi-user.target
[Service]
User=NuclearHazard
WorkingDirectory=/home/NuclearHazard/RotorHazard/src/server
ExecStart=/home/NuclearHazard/.venv/bin/python server.py
[Install]
WantedBy=multi-user.target" | sudo tee -a /lib/systemd/system/rotorhazard.service

sudo chmod 644 /lib/systemd/system/rotorhazard.service
sudo systemctl daemon-reload
sudo systemctl enable rotorhazard.service

sudo apt-get install iptables -y
sudo iptables -A PREROUTING -t nat -p tcp --dport 80 -j REDIRECT --to-ports 5000
sudo iptables -A PREROUTING -t nat -p tcp --dport 8080 -j REDIRECT --to-ports 80
sudo iptables-save
echo iptables-persistent iptables-persistent/autosave_v4 boolean true | sudo debconf-set-selections
echo iptables-persistent iptables-persistent/autosave_v6 boolean true | sudo debconf-set-selections
sudo apt-get -y install iptables-persistent

echo "if iwgetid -r | grep -q .; then
    echo "Wi-Fi network found. Not creating a hotspot."
else
    nmcli dev wifi hotspot ifname wlan0 ssid "NuclearHazard" password "nuclearhazard"
fi" | sudo tee -a /home/NuclearHazard/hotspot.sh
sudo chmod +x /home/NuclearHazard/hotspot.sh

echo "[Unit]
Description=Hotspot Service
After=NetworkManager.service
Wants=NetworkManager.service

[Service]
Type=simple
ExecStartPre=/bin/sleep 20
ExecStart=sudo /home/NuclearHazard/hotspot.sh
WorkingDirectory=/home/NuclearHazard/

[Install]
WantedBy=multi-user.target" | sudo tee -a /etc/systemd/system/hotspot.service

# Check for the nuclearwifi argument
if [ "$1" == "nuclearwifi" ]; then
    sudo systemctl enable hotspot.service
fi

sudo reboot