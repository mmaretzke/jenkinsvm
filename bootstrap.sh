#!/usr/bin/env bash

wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
(sudo cat /etc/apt/sources.list; echo "deb http://pkg.jenkins-ci.org/debian binary/") > ./out.file | sudo mv ./out.file /etc/apt/sources.list
apt-get update
apt-get install -y jenkins 
