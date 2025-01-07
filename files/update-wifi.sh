#!/bin/bash

# Check if the script is run with sudo
if [[ "$EUID" -ne 0 ]]; then
  echo "Please run this script with sudo."
  exit 1
fi

# Check if nmcli is installed
if ! command -v nmcli &> /dev/null; then
  echo "nmcli is not installed. Please install NetworkManager first."
  exit 1
fi

# Check if the correct number of arguments are provided
if [[ "$#" -ne 2 ]]; then
  echo "Usage: sudo ./update_wifi.sh <SSID> <PASSWORD>"
  exit 1
fi

# Extract arguments
SSID="$1"
PASSWORD="$2"

# Display current Wi-Fi connections
echo "Current Wi-Fi connections:"
nmcli connection show | grep wifi

# Add the new Wi-Fi connection
echo "Adding new connection for SSID: $SSID"
nmcli dev wifi connect "$SSID" password "$PASSWORD"

# Test the new connection
echo "Testing connection to $SSID..."
nmcli connection up "$SSID"

if [[ $? -eq 0 ]]; then
  echo "Successfully connected to $SSID."
else
  echo "Failed to connect to $SSID. Restoring previous connection if available..."
  nmcli connection up "$(nmcli -t -f NAME connection show --active | head -n 1)" || echo "No previous connection available."
  exit 1
fi