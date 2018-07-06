# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX_IMAGE = "ubuntu/xenial64"
NODE_COUNT = 1

Vagrant.configure("2") do |config|
  config.vm.define "master" do |subconfig|
    subconfig.vm.box = BOX_IMAGE
    subconfig.vm.hostname = "master"
    subconfig.vm.network :private_network, ip: "10.0.0.10"
    config.vm.provision "shell", inline: <<-SHELL
     apt-get update
     apt-get upgrade -y
     sudo apt-get install software-properties-common
     sudo apt-add-repository ppa:ansible/ansible -y
     sudo apt-get update
     apt-get install -y ansible
     ansible-playbook --inventory="localhost," -c local /vagrant/ansible/playbook.yml
   SHELL
  end

  (1..NODE_COUNT).each do |i|
    config.vm.define "node#{i}" do |subconfig|
      subconfig.vm.box = BOX_IMAGE
      subconfig.vm.hostname = "node#{i}"
      subconfig.vm.network :private_network, ip: "10.0.0.#{i + 10}"
      subconfig.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get upgrade -y
      apt-get -y install python-simplejson
      SHELL
    end
  end
end