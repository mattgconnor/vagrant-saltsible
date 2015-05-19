#!/bin/sh

# ANSIBLE
cd ansible-master
vagrant destroy -f
cd ..

cd ansible-slave1
vagrant destroy -f
cd ..

cd ansible-slave2
vagrant destroy -f
cd ..

# SALT
cd salt
vagrant destroy -f
