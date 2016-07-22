# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  
  config.vm.network "public_network", ip: "192.168.1.170"
  config.vm.hostname =  "web1"    
    
  config.vm.provider :virtualbox do |v|
	v.name = "centos"
	v.memory = 1024
	v.cpus = 2
  end

  config.vm.provision :ansible do |ansible|
	ansible.playbook = "main.yml"
  end
end
