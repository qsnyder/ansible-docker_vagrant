# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# Ubuntu/Xenial Vagrant box with provisioning to install required elements for Ansible, AWX
# Used to decrease the time for uptake of a rudimentary network automation system for non-NetDevOps engineers
#
# Author: Quinn Snyder, Systems Engineer | Enterprise Southwest .:|:.:|:. Cisco Systems .:|:.:|:.
# Date: 2018-02-26
# Version: 0.1a
#

raise "vagrant-reload plugin must be installed.  Please install using 'vagrant plugin install vagrant-reload'" unless Vagrant.has_plugin? "vagrant-reload"

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |v|
  	v.name = "Ansible-Docker-VM"
  	v.memory = 2048
  	v.cpus = 2
  end

  config.vm.box = "ubuntu/xenial64"
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "synched/", "/home/vagrant/synched/"
  config.vm.provision "shell", path: "script.sh"

  config.vm.provision :reload

  config.vm.provision "shell", path: "post-reboot.sh"

end