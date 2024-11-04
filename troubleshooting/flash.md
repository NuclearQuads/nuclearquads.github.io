---
layout: default
title: SD Card Flashing
---

# Flash NuclearHazard SD Card From Image (Windows)

## Downloads

[Win32DiskImager](https://win32diskimager.b-cdn.net/win32diskimager-1.0.0-install.exe)

<a href="https://drive.google.com/file/d/1-0wvB4UB75ikpUQoiZs9ZyMAl8WBjb8d/view" target="_blank">NuclearHazard 4.1.1 SD Card Image</a> (8GB file may take a while to download)

## How to flash

- Install and open Win32DiskImager
- Browse for the downloaded SD card image and select it in the Image File section
- Find which drive letter is your SD card by going to "My Computer" in the Windows file explorer, then insert your SD card to your computer and see the drive letter for the drive that just appeared (If multiple appear, you can use any of the drive letters)
- Use the dropdown under Device in Win32DiskImager to select the drive letter.
- Leave all other options then click "Write"
- Wait 5-30 minutes for it to finish

# Flashing NuclearHazard SD Card Image (macOS)

## Downloads

<a href="https://drive.google.com/file/d/1-0wvB4UB75ikpUQoiZs9ZyMAl8WBjb8d/view" target="_blank">NuclearHazard 4.1.1 SD Card Image</a> (8GB file may take a while to download)

## Steps to Flash

1. Open Terminal
2. Insert SD card into your computer
3. Identify SD card device name:
```bash
diskutil list
```
Look for your SD card (usually `/dev/disk2` or similar). Verify by checking the size.

4. Unmount the SD card (replace `diskX` with your disk number):
```bash
diskutil unmountDisk /dev/diskX
```

5. Flash the image (adjust paths as needed):
```bash
sudo dd if=~/Downloads/nuclearhazard-4.1.1.img of=/dev/rdiskX bs=1m
```
Note: Use `rdiskX` instead of `diskX` for faster writing. Replace `X` with your disk number.

6. Wait for flashing to complete (10-30 minutes)
   - No progress will show
   - Press Ctrl+T to check status
   - Command prompt will return when done

7. Eject the SD card:
```bash
sudo diskutil eject /dev/diskX
```

## Warning
- Double-check disk number before flashing
- Wrong disk number can erase your computer's drive