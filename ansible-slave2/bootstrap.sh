#!/usr/bin/env bash

cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys

# set private key permissions
chmod 400 /home/vagrant/.ssh/id_rsa
