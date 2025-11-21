#!/bin/bash
set -e

echo "Installing packages"
if command -v yum > /dev/null; then
    sudo yum update && sudo yum upgrade -y
    sudo yum install docker git -y

    TEST_VAR_PORT=80 
 elif command -v apt > /dev/null; then
    sudo apt update && sudo apt upgrade -y
    #udo apt install docker git -y
    # Package 'docker' has no installation candidate

    TEST_VAR_PORT=8080
else 
    echo "apt or yum do not installed"
    exit
fi

echo "Starting docker daemon" 
sudo systemctl start docker

if [[ "$1" != "--build" ]]; then
    echo "Pulling image" 
    sudo docker pull tsuyakashi/pipline-test
elif [[ "$1" == "--build" ]]; then
    git clone https://github.com/StartBootstrap/startbootstrap-creative.git
    mv startbootstrap-creative/scripts ./
    mv startbootstrap-creative/src ./
    mv startbootstrap-creative/package-lock.json ./
    mv startbootstrap-creative/package.json ./
    rm -rf startbootstrap-creative/

    echo "Builing image"
    sudo docker build -t tsuyakashi/pipline-test .

    rm -rf scripts/
    rm -rf src/
    rm package-lock.json
    rm package.json
fi

echo "Starting frontend container"
sudo docker run -d -p $TEST_VAR_PORT:8080 --name frontend tsuyakashi/pipline-test

echo "Container started."