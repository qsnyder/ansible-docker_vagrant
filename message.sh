# Ubuntu/Xenial Vagrant box with provisioning to install required elements for Ansible, AWX
# Used to decrease the time for uptake of a rudimentary network automation system for non-NetDevOps engineers
# --> Script to print messaging to the screen indicating what has occurrec.
#
# Author: Quinn Snyder, Systems Engineer | Enterprise Southwest .:|:.:|:. Cisco Systems .:|:.:|:.
# Date: 2018-02-26
# Version: 0.1a
#
echo "**************************************************************************************************************"
echo "You've successfully started the Vagrant box.  This machine provides access to Ansible, Docker-CE, and AWX"
echo "To access this machine, invoke 'vagrant ssh'.  This will give CLI access to the VM."
echo ""
echo "There is a synchronized folder between your host and guest, located in ~/synched on the VM."
echo "This folder is mapped to the 'synched' folder located in this directory.  It will update in realtime on the VM."
echo "Because of this, you can use your local text editor of choice to create playbooks and move them to the VM"
echo "easily for execution."
echo ""
echo "Ansible playbooks can be run directly from the CLI on the host VM."
echo "However, AWX can be used by accessing 'http://localhost:8080' in a web browser."
echo ""
echo "AWX is running using a set of Docker containers."
echo "AWX can be disabled by commenting out the 'ansible-playbook' line in the 'post-reboot.sh' script"
echo "prior to running the 'vagrant up' command."
echo "**************************************************************************************************************"