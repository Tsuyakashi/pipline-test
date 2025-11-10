# Pipline to AWS EC2
## How to use:

- launch new EC2 instance   
- add access from http/https from net
- startup with setup.sh
- update codespace secrets:
    - USERNAME
    - SERVER_HOST
    - SSH_KNOWN_HOSTS
    - SSH_PRIVATE_KEY
    - DOCKER_USERNAME
    - DOCKER_REPO_NAME
    - DOCKER_PASSWORD
- with pushing frontend edits it will be applied on server by github actions

## Used:
- nodejs & npm with startbootstrap creative/agency as front
- docker with node to build static & nginx to show
- dockerhub to store image
- .sh to configure
- github actions for pipline
- github secrets to not show private data

## Usefull links:
- github actions guide: https://habr.com/ru/articles/768770/
- startbootstrap themes:
    - [starbootstrap-creative](https://startbootstrap.com/theme/creative)
    - [starbootstrap-agency](https://startbootstrap.com/theme/agency)
- configure domain: https://habr.com/ru/amp/publications/716002/
- DuckDNS: https://www.duckdns.org/