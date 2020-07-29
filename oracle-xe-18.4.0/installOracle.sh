#!/bin/bash
sudo apt update
sudo apt -y install docker.io unzip
sudo usermod -aG docker ubuntu
mkdir ~/oracleInstall
cd ~/oracleInstall
wget https://github.com/oracle/docker-images/archive/master.zip
unzip master.zip
cd ~/oracleInstall/docker-images-master/OracleDatabase/SingleInstance/dockerfiles
sudo ./buildDockerImage.sh -x -v 18.4.0
cd ~
rm -rf ~/oracleInstall
