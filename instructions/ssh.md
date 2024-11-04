---
layout: default
title: SSH Instructions
---

# Connecting to Raspberry Pi via SSH

## Windows (using PuTTY)

1. Download <a href="https://www.putty.org/" target="_blank">PuTTY</a> (You'll probably want the 64-bit x86 version on the downloads page)
2. Launch PuTTY
3. Enter connection details:
   - Host Name: `rotorhazard.local` or `10.42.0.1`
   - Port: `22`
   - Connection type: `SSH`
4. Click "Open"
5. When prompted:
   - Username: `NuclearHazard`
   - Password: `nuclearhazard`

## macOS/Linux (using Terminal)

1. Open Terminal
2. Connect using command:
```bash
ssh NuclearHazard@rotorhazard.local
```
Or using IP:
```bash
ssh NuclearHazard@10.42.0.1
```
3. Type `yes` if asked about fingerprint
4. Enter password when prompted: `nuclearhazard`
