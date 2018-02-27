# Ubuntu/Xenial Vagrant box with provisioning to install required elements for Ansible, AWX
# Used to decrease the time for uptake of a rudimentary network automation system for non-NetDevOps engineers
# --> Second round of provisioning to install AWX after virtual machine reboot.  Installs AWX
#
# Author: Quinn Snyder, Systems Engineer | Enterprise Southwest .:|:.:|:. Cisco Systems .:|:.:|:.
# Date: 2018-02-26
# Version: 0.1a
#
git clone https://github.com/ansible/awx.git
cd awx/installer
ansible-playbook -i inventory install.yml