FROM ubuntu:20.04

# Install curl to get latest helm3 
RUN apt-get update && apt-get install -y curl \
    && curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY run.sh /run.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/run.sh"]
