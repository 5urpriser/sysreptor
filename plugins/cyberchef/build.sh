#!/bin/bash

set -e

CYBERCHEF_VERSION="v10.19.2"

if [ ! -f "./static/cyberchef/CyberChef_${CYBERCHEF_VERSION}.html" ]; then
  echo "Downloading CyberChef"
  rm -rf static/cyberchef/*
  mkdir -p static/cyberchef
  curl -L "https://github.com/gchq/CyberChef/releases/download/v10.19.2/CyberChef_${CYBERCHEF_VERSION}.zip" -o cyberchef.zip
  unzip cyberchef.zip -d static/cyberchef
  rm cyberchef.zip
else
  echo "CyberChef already exists. Skipping download."
fi
