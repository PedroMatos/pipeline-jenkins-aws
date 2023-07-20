#!/bin/bash

# Build the Docker image and start the Jenkins service
docker-compose -f jenkins/docker-compose.yml up -d --build

# Print a message to let the user know that Jenkins should be up and running
echo "Jenkins should now be running on http://localhost:8080"
echo "On a i5-1245U:"
echo "  - First startup takes about 30 minutes, as it needs to download and setup the plugins, so please be patient."
echo "  - Second startup takes about 3 minutes."

