# Pipline to AWS EC2
### Test repo to make yml for pipline in GitHub Actions
## How to use:
### 1. Launch AWS EC2 instance (ssh access needed)
### 2. Startup with `quickstart.sh`
### 3. Update GitHub secrets:
- USERNAME
- SERVER_HOST
- SSH_KNOWN_HOSTS
- SSH_PRIVATE_KEY
### And DockerHub credentials (also in GitHub secrets)    
- DOCKER_USERNAME
- DOCKER_PASSWORD
- DOCKER_REPO_NAME
### 4. With pushing to main, pipline start

## Used:
- nodejs & npm with startbootstrap creative/agency as front
- docker with node-alpine to build static & nginx to show
- dockerhub to store image
- .sh to configure
- github actions for pipline
- github secrets to not show private data

## Usefull links:
- github actions guide: https://habr.com/ru/articles/768770/
- startbootstrap themes:
    - [starbootstrap-creative](https://startbootstrap.com/theme/creative)
    - [starbootstrap-agency](https://startbootstrap.com/theme/agency)
