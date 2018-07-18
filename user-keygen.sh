#!/bin/bash -x

echo "export EDITOR=vim" >> $HOME/.bashrc
ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa -q -P ""
    # chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
    # chown vagrant:vagrant /home/vagrant/.ssh/id_rsa.pub
     if [ -d /vagrant/keys/ ]; then echo "Directory exists and we have to delete it" && rm -rf /vagrant/keys; fi
     mkdir /vagrant/keys/
     cp /home/vagrant/.ssh/id_rsa.pub /vagrant/keys/id_rsa.pub
    # exit
#   #  ansible-playbook --inventory="localhost," -c local /vagrant/ansible/playbook.yml
    # ansible-playbook  /vagrant/ansible/playbook.yml 
echo "======================================================================================================================="
echo "=                                                                                                                     ="
echo "======                                Sript 1 ssh-keygen complete successfully                                   ======"
echo "=                                                                                                                     ="
echo "======================================================================================================================="
