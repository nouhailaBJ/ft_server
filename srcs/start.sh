#!/bin/sh
apt-get -y update 
apt-get install -y nginx vim lsb-release gnupg libfcgi0ldbl wget
service nginx start

