#!/usr/bin/env bash

apt-get update
apt-get install -y python-software-properties
add-apt-repository -y ppa:saltstack/salt
apt-get update
apt-get install -y salt-minion salt-syndic salt-cloud salt-ssh salt-api

sed -i 's~#master: salt~master: 172.16.2.10~g' /etc/salt/minion
service salt-minion restart

cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
