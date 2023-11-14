# Pi Setup Script

Note: The username on your Pi OS installation must be NuclearHazard.

This is written for the version of Pi OS released on 2023-10-10. Other versions probably will give errors.

```bash
sudo apt update
sudo apt upgrade -y
```
```
sudo apt install dhcpcd5 python3.11-venv python3-dev libffi-dev python3-smbus build-essential python3-pip git scons swig python3-rpi.gpio default-jdk-headless libjpeg-dev libopenjp2-7-dev -y
```

Note: As of this writing, raspi-config's nonint is broken so when running the step below, use the UI to select 'no' then 'yes'.

```
sudo raspi-config nonint do_serial 2
sudo raspi-config nonint do_i2c 0
sudo raspi-config nonint do_ssh 0
sudo raspi-config nonint do_spi 0
```
```
echo "dtparam=i2c_baudrate=75000
dtoverlay=miniuart-bt
dtoverlay=act-led,gpio=24
dtparam=act_led_trigger=heartbeat
dtoverlay=gpio-shutdown,gpio_pin=19,debounce=5000
core_freq=250" | sudo tee -a /boot/config.txt
```
```
cd ~
wget https://codeload.github.com/RotorHazard/RotorHazard/zip/v4.0.0 -O temp.zip
unzip temp.zip
mv RotorHazard-4.0.0 RotorHazard
rm temp.zip
cd ~/RotorHazard/src/server
cp config-dist.json config.json
sed -i 's/"ADMIN_USERNAME": "admin"/"ADMIN_USERNAME": "NuclearHazard"/' config.json
sed -i 's/"ADMIN_PASSWORD": "rotorhazard"/"ADMIN_PASSWORD": "nuclearhazard"/' config.json
sed -i '/"GENERAL": {/a"SHUTDOWN_BUTTON_GPIOPIN": 19,' config.json
sed -i '/"SHUTDOWN_BUTTON_GPIOPIN": 19,/a"SHUTDOWN_BUTTON_DELAYMS": 2500,' config.json
```
```
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
pip install pillow
deactivate
cd ~
```
```
echo "[Unit]
Description=RotorHazard Server
After=multi-user.target
[Service]
User=NuclearHazard
WorkingDirectory=/home/NuclearHazard/RotorHazard/src/server
ExecStart=/home/NuclearHazard/RotorHazard/src/server/venv/bin/python server.py
[Install]
WantedBy=multi-user.target" | sudo tee -a /lib/systemd/system/rotorhazard.service
```
```
sudo chmod 644 /lib/systemd/system/rotorhazard.service
sudo systemctl daemon-reload
sudo systemctl enable rotorhazard.service
```
```
sudo apt-get install iptables -y
sudo iptables -A PREROUTING -t nat -p tcp --dport 80 -j REDIRECT --to-ports 5000
sudo iptables -A PREROUTING -t nat -p tcp --dport 8080 -j REDIRECT --to-ports 80
sudo iptables-save
echo iptables-persistent iptables-persistent/autosave_v4 boolean true | sudo debconf-set-selections
echo iptables-persistent iptables-persistent/autosave_v6 boolean true | sudo debconf-set-selections
sudo apt-get -y install iptables-persistent
```
```
echo "if iwgetid -r | grep -q .; then
    echo "Wi-Fi network found. Not creating a hotspot."
else
    nmcli dev wifi hotspot ifname wlan0 ssid "NuclearHazard" password "nuclearhazard"
fi" | sudo tee -a /home/NuclearHazard/hotspot.sh
sudo chmod +x /home/NuclearHazard/hotspot.sh
```
```
echo "[Unit]
Description=Hotspot Service
After=NetworkManager.service
Wants=NetworkManager.service

[Service]
Type=simple
ExecStartPre=/bin/sleep 10
ExecStart=sudo /home/NuclearHazard/hotspot.sh
WorkingDirectory=/home/NuclearHazard/

[Install]
WantedBy=multi-user.target" | sudo tee -a /etc/systemd/system/hotspot.service
sudo systemctl enable hotspot.service
```
```
sudo reboot
```