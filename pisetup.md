# Pi Setup Script

Run this command, which will download and run this script
```curl -s https://nuclearquads.github.io/files/nhpisetup.sh | bash -s nuclearwifi```

Or this one which will disable the NuclearHazard wifi network
```curl -s https://nuclearquads.github.io/files/nhpisetup.sh | bash```

This 

If there are any errors, let me know so I can fix them, but also a quick google search should easily solve most of them.

Note: The username on your Pi OS installation must be NuclearHazard.

This is written for the version of Pi OS released on 2023-10-10 (Bookworm) and Pi 3/4/5/Zero2 hardware. Other versions probably will give errors.

To disable the hotspot, do ```sudo systemctl disable hotspot.service```

To enable it later, do ```sudo systemctl enable hotspot.service```


# Old version

For the old RotorHazard v4.0.1 setup instructions, see [here](oldsetup.md)