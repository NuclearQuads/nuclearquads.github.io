sudo apt update
sudo apt upgrade -y

sudo apt install python3-dev libffi-dev python3-smbus build-essential python3-pip git scons swig python3-rpi.gpio default-jdk-headless libjpeg-dev libopenjp2-7-dev -y

sudo raspi-config nonint do_serial 2
sudo raspi-config nonint do_i2c 0
sudo raspi-config nonint do_ssh 0
sudo raspi-config nonint do_spi 0

echo "dtparam=i2c_baudrate=75000
dtoverlay=miniuart-bt
dtoverlay=act-led,gpio=24
dtparam=act_led_trigger=heartbeat
dtoverlay=gpio-shutdown,gpio_pin=18,debounce=5000
core_freq=250" | sudo tee -a /boot/config.txt

cd ~
wget https://codeload.github.com/RotorHazard/RotorHazard/zip/v4.0.0-beta.4 -O temp.zip
unzip temp.zip
mv RotorHazard-4.0.0-beta.4 RotorHazard
rm temp.zip
cd ~/RotorHazard/src/server
sudo pip install -r requirements.txt

sudo pip install pillow

echo "[Unit]
Description=RotorHazard Server
After=multi-user.target
[Service]
User=pi
WorkingDirectory=/home/pi/RotorHazard/src/server
ExecStart=/usr/bin/python server.py
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


git clone https://github.com/SpencerGraffunder/Raspberry-Pi-Automated-WiFi-Access-Point
cd Raspberry-Pi-Automated-WiFi-Access-Point
sudo chmod +x setup.sh
./setup.sh -s NuclearHazard -p wegozoom

echo "please reboot"