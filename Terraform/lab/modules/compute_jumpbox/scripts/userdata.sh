#!/bin/bash

sudo apt update -y
sudo snap install kubectl --classic
sudo apt-get install docker.io -y
sudo service docker start
