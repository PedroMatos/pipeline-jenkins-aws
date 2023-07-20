#!/bin/bash

# Stop and remove the Jenkins service
docker-compose -f jenkins/docker-compose.yml down

# Print a message to let the user know that Jenkins has been stopped
echo "Jenkins has been stopped"
