#!/bin/bash

sudo apt update && sudo apt -y upgrade

# Docker installation
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
exec bash

# Java installation
sudo apt -y install openjdk-11-jdk

# AWS CLI
sudo apt -y awscli
aws --version
aws configure