#!/bin/bash

# Define the log file name and location
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_FILE="$SCRIPT_DIR/nhpisetup.log"

# Redirect all output to the log file
exec > >(tee -a "$LOG_FILE") 2>&1

# update and install dependencies
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install python3-venv python3-dev libffi-dev python3-smbus build-essential python3-pip git scons swig python3-rpi.gpio default-jdk-headless libjpeg-dev libopenjp2-7-dev -y

# setup pi
sudo raspi-config nonint do_serial_hw 0
sudo raspi-config nonint do_serial_cons 1
sudo raspi-config nonint do_i2c 0
sudo raspi-config nonint do_ssh 0
sudo raspi-config nonint do_spi 0
sudo raspi-config nonint do_wifi_country US

echo "\
dtoverlay=miniuart-bt
dtparam=i2c_baudrate=75000
dtoverlay=act-led,gpio=24
dtoverlay=gpio-led,gpio=26,label=pwrled,trigger=default-on
#dtoverlay=gpio-fan,gpiopin=4
dtparam=act_led_trigger=heartbeat
dtoverlay=spi0-0cs,no_miso

[pi5]
dtoverlay=uart0-pi5
dtoverlay=i2c1-pi5
dtoverlay=uart3-pi5

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

# for VRxC flashing and pi 5 led
# python -m pip install esptool --break-system-packages 
pip install rpi5-ws2812 esptool pillow

wget https://rotorhazard.com/install.sh
sh install.sh

# git way
#git clone --depth 1 --branch v4.1.1 https://github.com/RotorHazard/RotorHazard.git
# in case a single commit is needed to fix something
#cd RotorHazard
#git fetch origin a759846b12011a394422af9c00b1b89423a3dd70
#git cherry-pick a759846b12011a394422af9c00b1b89423a3dd70

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

echo '#!/bin/bash

# Define the file path containing SSID and password
WIFI_CONFIG_FILE="/home/NuclearHazard/wifi_config.txt"

# Read SSID and password from the configuration file
SSID=$(awk "NR==1" "$WIFI_CONFIG_FILE")
PASSWORD=$(awk "NR==2" "$WIFI_CONFIG_FILE")

# Validate SSID and password
if [ -z "$SSID" ] || [ -z "$PASSWORD" ]; then
  echo "Error: SSID or password is empty in the configuration file."
  exit 1
fi

echo "Attempting to connect with SSID: $SSID and password: $PASSWORD"

# Attempt to connect to the WiFi network or start a hotspot on failure
if nmcli dev wifi connect "$SSID" password "$PASSWORD" ifname wlan0; then
  echo "Successfully connected to WiFi network: $SSID"
  echo "Run the following command to remove the current Wi-Fi network: sudo nmcli connection delete id \"$SSID\""
  exit 0
else
  echo "Failed to connect to WiFi network: $SSID. Starting hotspot instead."
  nmcli dev wifi hotspot ifname wlan0 ssid "NuclearHazard" password "nuclearhazard"
  if [ $? -eq 0 ]; then
    echo "Hotspot created with SSID: NuclearHazard"
  else
    echo "Failed to create hotspot."
    exit 1
  fi
fi' | sudo tee /home/NuclearHazard/hotspot.sh
sudo chmod +x /home/NuclearHazard/hotspot.sh

echo 'ssid
password' | tee /home/NuclearHazard/wifi_config.txt

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
