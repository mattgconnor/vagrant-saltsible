#!/bin/bash

# ANSIBLE
cd ansible-master
vagrant up
cd ..

cd ansible-slave1
vagrant up
cd ..

cd ansible-slave2
vagrant up
cd ..

# SALT
cd salt
vagrant up
