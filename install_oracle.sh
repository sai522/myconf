# Download docker image from Docker hub
# docker pull store/oracle/database-enterprise:12.2.0.1
#

docker run -d -it --name oracle12201 store/oracle/database-enterprise:12.2.0.1

# Shell to get in
docker exec -it oracle12201 /bin/bash

# Further reading 
# https://hub.docker.com/u/sai522/content/sub-edf47d2f-9259-4b7b-9d31-c176c278770b?ref=login

