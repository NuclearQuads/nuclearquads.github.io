#!/bin/bash

sudo systemctl stop rotorhazard.service

# cd ~/RotorHazard/src/server
# pip install -r requirements.txt
# python -c "import Config; Config.Config(None, 'config.json', 'cfg_bkp')"
sed -i 's/"ADMIN_USERNAME": "admin"/"ADMIN_USERNAME": "NuclearHazard"/' ~/rh-data/config.json
sed -i 's/"ADMIN_PASSWORD": "rotorhazard"/"ADMIN_PASSWORD": "nuclearhazard"/' ~/rh-data/config.json
sed -i 's/"SHUTDOWN_BUTTON_GPIOPIN": 18/"SHUTDOWN_BUTTON_GPIOPIN": 19/' ~/rh-data/config.json
sed -i 's/"hue_0": "212"/"hue_0": "100"/' ~/rh-data/config.json
sed -i 's/"sat_0": "55"/"sat_0": "75"/' ~/rh-data/config.json
sed -i 's/"timerName": "RotorHazard"/"timerName": "NuclearHazard"/' ~/rh-data/config.json
sed -i 's/"LED_COUNT": 0/"LED_COUNT": 100/' ~/rh-data/config.json
# mkdir rh-data
# wget "https://nuclearquads.github.io/files/config.json" -P ~/rh-data

sudo systemctl start rotorhazard.service
