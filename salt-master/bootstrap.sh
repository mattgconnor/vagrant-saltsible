#!/usr/bin/env bash

apt-get update
apt-get install -y python-software-properties
add-apt-repository -y ppa:saltstack/salt
apt-get update
apt-get install -y salt-master salt-minion salt-syndic salt-cloud salt-ssh salt-api

sed -i 's~#master: salt~master: 172.16.2.10~g' /etc/salt/minion
service salt-minion restart

ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i /home/vagrant/.ssh/id_rsa -x vagrant@172.16.2.11 sudo service salt-minion restart
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i /home/vagrant/.ssh/id_rsa -x vagrant@172.16.2.12 sudo service salt-minion restart

sleep 2
salt-key -a 'salt-master' -y
salt-key -a 'salt-slave1' -y
salt-key -a 'salt-slave2' -y
