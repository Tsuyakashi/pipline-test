#!/bin/bash
echo "Stop container"
docker stop frontend
docker rm frontend
docker image rm tsuyakashi/pipline-test
echo "Pull image"
docker pull tsuyakashi/pipline-test
echo "Start frontend container"
docker run -d -p 80:8080 --name frontend tsuyakashi/pipline-test
echo "Finish deploying!"