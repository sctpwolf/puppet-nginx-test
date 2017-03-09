#!/bin/bash

##install ansible and git
apt-get update
apt-get install -y git-core ansible

##setup working directory
mkdir ~/pup
cd ~/pup

##grab all the things
git clone https://github.com/sctpwolf/puppet-nginx-test.git ~/pup

##provision server
ansible-playbook playbook.yml

