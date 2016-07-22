# -*- mode: ruby -*-
# vi: set ft=ruby :
boxes = [
{
    :name => "tomcat1",
    :ip => "192.168.1.170"
},
{
    :name => "nagios1",
    :ip => "192.168.1.180"
}
]

Vagrant.configure(2) do |config|
boxes.each do |opts|
  config.vm.define opts[:name] do |config|
    config.vm.box = "centos/7"
    config.vm.network "public_network", ip: opts[:ip], bridge: "enp1s0"    
    config.vm.hostname =  opts[:name]
    config.vm.provider :virtualbox do |v|
	   v.name = opts[:name]
	   v.memory = 1024
	   v.cpus = 2
    end
    config.vm.provision :ansible do |ansible|
	   ansible.playbook = "main.yml"
    end
  end
end
end