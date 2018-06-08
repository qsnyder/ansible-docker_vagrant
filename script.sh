# Ubuntu/Xenial Vagrant box with provisioning to install required elements for Ansible, AWX
# Used to decrease the time for uptake of a rudimentary network automation system for non-NetDevOps engineers
# --> Initial round of provisioning prior to system reboot.  Reboot done to ensure users are added to docker group
# to allow for non-sudo docker usage.
#
# Author: Quinn Snyder, Systems Engineer | Enterprise Southwest .:|:.:|:. Cisco Systems .:|:.:|:.
# Date: 2018-02-26
# Version: 0.1a
#
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y ansible

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo usermod -a -G docker $USER
sudo usermod -a -G docker vagrant
sudo systemctl status docker

sudo apt-get install -y python-pip
sudo pip install --upgrade pip
sudo pip install docker
