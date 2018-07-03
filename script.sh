#!/bin/bash -e
 
# Update apt
sudo apt-get update -y

if [! -f /usre/bin/git ]
    then
    sudo apt-get install git -y
fi

if [ ! -f /usr/bin/ansible-playbook ]
    then
    sudo apt-get install software-properties-common
    sudo apt-add-repository ppa:ansible/ansible
    sudo apt-get update
    sudo apt-get install -y ansible
fi