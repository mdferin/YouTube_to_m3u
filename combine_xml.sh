#!/bin/bash

# Download XML files
wget -O unifi_epg.xml https://raw.githubusercontent.com/azimabid00/epg/main/unifi_epg.xml
wget -O astro_epg.xml https://raw.githubusercontent.com/azimabid00/epg/main/astro_epg.xml

# Remove specified text from astro_epg.xml
sed -i '/<tv generated-by="azimabid00 on github - EPG XML Generator V1.0 - EPG Generated for 25-05-2024">/d' astro_epg.xml
sed -i '/<?xml version="1.0" encoding="UTF-8"?>/d' astro_epg.xml

# Combine XML files
cat unifi_epg.xml astro_epg.xml > Rancak.xml
