# ansible-docker_vagrant
Self-contained Vagrant machine with scripts to install Ansible, Docker-CE, and AWX.  Also restarts the VM during provisioning to ensure that the appropriate users are added to the `docker` group.

### Pre-Requisites
Tested using VirtualBox 5.1 running on MacOS with Vagrant 2.0.2, however should be cross-platform with Windows.
Requires `vagrant-reload` plugin to be installed prior to running.  If this plugin is not installed, an error will be raised when starting the Vagrant machine.  Install the plugin using:

`vagrant plugin install vagrant-reload`

### Usage
Uses shell scripts to add the PPA key for Ansible, install Ansible, install and update python-pip, add the docker-py plugin, clone the AWX Github repo, and install AWX.
Once the appliance has completed the installation of all required software, the AWX web UI can be accessed using the URL `http://localhost:8080`.
The `synched` folder within the directory structure is synched directly with the folder in the VM located at `/home/vagrant/synched` -- allowing for easy transfer of playbooks from the native host to the VM.

1. Clone repo
2. Enter cloned repo directory
3. Install `vagrant-reload` plugin
4. Run `vagrant up`

Username and password for AWX are left at defaults:
Username: `admin`
Password: `password`

### Errata or Bugs
