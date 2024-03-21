```
wget https://codeload.github.com/RotorHazard/RotorHazard/zip/v4.1.0-beta.2 -O temp.zip
unzip temp.zip
mv RotorHazard-4.1.0-beta.2 RotorHazard
rm temp.zip
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