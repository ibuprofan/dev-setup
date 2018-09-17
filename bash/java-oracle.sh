#!/usr/bin/env bash

MANIFEST='manifest.txt'
URL='https://raw.githubusercontent.com/ibuprofan/dev-setup/master/bin/'
JDK='jdk-8u181-linux-x64.tar.gz'
JRE='jre-8u181-linux-x64.tar.gz'
JDK_DIR='jdk1.8.0_181'
JRE_DIR='jre1.8.0_181'
MY_VER=''
MY_DIR=''

echo ""
echo " +------------------------------------------------+"
echo " | Oracle Java:                                   |"
echo " |                                                |"
echo " |  (1). JDK 1.8: ${JDK}      |"
echo " |  (2). JRE 1.8: ${JRE}      |"
echo " +------------------------------------------------+"
echo ""
echo " Choose version to install..."
echo ""
stty -echo
read VERSION
stty echo

if [ "${VERSION}" = "1" ]; then
  MY_VER="${JDK}"
  MY_DIR="${JDK_DIR}"
elif [ "${VERSION}" = "2" ]; then
  MY_VER="${JRE}"
  MY_DIR="${JRE_DIR}"
else
  echo "Invalid choice: ${VERSION}"
  exit 1
fi

echo "Installing ${MY_VER}..."

exit 0

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
