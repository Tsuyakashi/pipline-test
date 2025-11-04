sudo yum update && sudo upgrade -y
sudo yum install docker git -y
sudo systemctl start docker

sudo adduser frontend
sudo usermod -a -G docker frontend
sudo su - frontend