```
wget https://codeload.github.com/RotorHazard/RotorHazard/zip/v4.1.0-beta.5 -O temp.zip
unzip temp.zip
mv RotorHazard-4.1.0-beta.5 RotorHazard
rm temp.zip
cd ~/RotorHazard/src/server
pip install -r requirements.txt
pip install pillow
python -c "import Config; Config.Config(None)"
sed -i 's/"ADMIN_USERNAME": "admin"/"ADMIN_USERNAME": "NuclearHazard"/' config.json
sed -i 's/"ADMIN_PASSWORD": "rotorhazard"/"ADMIN_PASSWORD": "nuclearhazard"/' config.json
sed -i 's/"SHUTDOWN_BUTTON_GPIOPIN": 18/"SHUTDOWN_BUTTON_GPIOPIN": 19/' config.json
cd ~
```