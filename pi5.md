```
wget https://codeload.github.com/RotorHazard/RotorHazard/zip/v4.1.0-beta.4 -O temp.zip
unzip temp.zip
mv RotorHazard-4.1.0-beta.4 RotorHazard
rm temp.zip
cd ~/RotorHazard/src/server
pip install -r requirements.txt
pip install pillow
wget https://nuclearquads.github.io/files/config.json -O config.json
cd ~
```