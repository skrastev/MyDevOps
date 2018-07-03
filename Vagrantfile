# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.define "acs" do |acs|
        acs.vm.box = "ubuntu/xenial64"
#        config.vm.network "public_network",  ip: "10.40.1.21",bridge: "Intel(R) Ethernet Connection I217-LM", bootproto: "static", gateway: "10.40.1.1"
        config.vm.provider "virtualbox" do |vb|
            vb.name = "acs"
            vb.memory = 2048
            vb.cpus = 2
        config.vm.provision "shell",
            path: "update.sh", run: "always"    
        config.vm.provision "shell", 
            path: "script.sh"
        end       
        config.vm.provision "ansible" do |ansible|
            ansible.playbook = "ansible/playbook.yml"        
        end
    end
end