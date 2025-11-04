#!/bin/bash
echo "Stop container"
sudo docker stop frontend
sudo docker rm frontend
sudo docker image rm tsuyakashi/pipline-test
echo "Pull image"
sudo docker pull tsuyakashi/pipline-test
echo "Start frontend container"
sudo docker run -d -p 80:8080 --name frontend tsuyakashi/pipline-test
echo "Finish deploying!"