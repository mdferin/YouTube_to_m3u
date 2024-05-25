#!/bin/bash

# Download XML files
wget -O unifi_epg.xml https://raw.githubusercontent.com/azimabid00/epg/main/unifi_epg.xml
wget -O astro_epg.xml https://raw.githubusercontent.com/azimabid00/epg/main/astro_epg.xml

# Combine XML files
cat unifi_epg.xml astro_epg.xml > Rancak.xml
