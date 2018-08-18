sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" > /etc/apt/source.list.d/docker.list
sudo apt-get update
sudo apt-get install -y docker-ce
sudo systemctl enable docker
sudo usermod -aG docker $(whoami)
