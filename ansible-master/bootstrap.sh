#!/usr/bin/env bash

apt-get install -y software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get -y update
apt-get -y install ansible

cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys

echo -e '172.16.1.10\n172.16.1.11\n172.16.1.12' > /etc/ansible/hosts
