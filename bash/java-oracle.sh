#!/usr/bin/env bash

# remove openJDK
sudo apt-get update && apt-get remove openjdk-6-jre
sudo apt-get autoremove && apt-get clean
sudo mkdir -p -v /opt/java/64
# JDK
rm jdk-*
wget https://drive.google.com/open?id=1Q1Cs5w_4MFQfwXN9Knz9C7L4g0jMWI2h
md5sum jdk-8u181-linux-x64.tar.gz
tar -zxvf jdk-8u181-linux-x64.tar.gz
sudo mv -v jdk1.8.0_181 /opt/java/64
sudo update-alternatives --install "/usr/bin/java" "java" "/opt/java/64/jdk1.8.0_181/bin/java" 1
sudo update-alternatives --set java /opt/java/64/jdk1.8.0_181/bin/java
# Installed?
java -version

