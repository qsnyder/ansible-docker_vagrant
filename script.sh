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
pip install --upgrade pip
pip install docker