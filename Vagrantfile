# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |v|
  	v.name = "Ansible-Docker-VM"
  	v.memory = 2048
  	v.cpus = 2
  end

  config.vm.box = "ubuntu/xenial64"
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provision "shell", path: "script.sh"

  config.vm.provision :reload

  config.vm.provision "shell", path: "post-reboot.sh"

end