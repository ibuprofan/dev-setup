#!/usr/bin/env bash

# remove openJDK
sudo apt-get update && apt-get remove openjdk-6-jre
sudo apt-get autoremove && apt-get clean
sudo mkdir -p -v /opt/java/64
# JRE
rm jre-*
wget wget https://raw.githubusercontent.com/ibuprofan/dev-setup/master/bin/jre-8u181-linux-x64.tar.gz
md5sum jre-8u181-linux-x64.tar.gz
tar -zxvf jre-8u181-linux-x64.tar.gz
sudo mv -v jre1.8.0_181 /opt/java/64
sudo update-alternatives --install "/usr/bin/java" "java" "/opt/java/64/jre1.8.0_181/bin/java" 1
sudo update-alternatives --set java /opt/java/64/jre1.8.0_181/bin/java
# Installed?
java -version

