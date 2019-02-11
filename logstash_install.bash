#!/bin/bash
set -e

# Source:
# https://www.elastic.co/guide/en/logstash/current/installing-logstash.html#package-repositories

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list

echo "Updating package lists ..."
sudo apt update -qq

sudo apt -y install logstash

echo "Done :D"
