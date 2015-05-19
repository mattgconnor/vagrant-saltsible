#!/usr/bin/env bash

apt-get update
apt-get install -y python-software-properties
add-apt-repository -y ppa:saltstack/salt
apt-get update
apt-get install -y salt-master salt-minion salt-cloud salt-ssh salt-api vim

sed -i 's~#master: salt~master: 127.0.0.1~g' /etc/salt/minion
service salt-minion restart
