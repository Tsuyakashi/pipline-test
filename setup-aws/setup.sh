#!/bin/bash
sudo yum update && sudo upgrade -y
echo "Install docker & git" && sudo yum install docker git -y
echo "Start docker daemon" && sudo systemctl start docker
echo "Pull image"&& sudo docker pull tsuyakashi/pipline-test
echo "Start frontend container" && \
sudo docker run -d -p 80:8080 --name frontend tsuyakashi/pipline-test
echo "Finish deploying!"