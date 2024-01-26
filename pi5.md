```
git clone https://github.com/RotorHazard/RotorHazard.git
cd ~/RotorHazard/src/server
pip install -r requirements.txt
pip install pillow
cp config-dist.json config.json
sed -i 's/"ADMIN_USERNAME": "admin"/"ADMIN_USERNAME": "NuclearHazard"/' config.json
sed -i 's/"ADMIN_PASSWORD": "rotorhazard"/"ADMIN_PASSWORD": "nuclearhazard"/' config.json
sed -i '/"GENERAL": {/a"SHUTDOWN_BUTTON_GPIOPIN": 19,' config.json
sed -i '/"SHUTDOWN_BUTTON_GPIOPIN": 19,/a"SHUTDOWN_BUTTON_DELAYMS": 2500,' config.json
cd ~
```