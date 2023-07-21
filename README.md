# pipeline-jenkins-aws

This repository contains a basic Jenkins pipeline for managing infrastructure on AWS.

## Approach

We adhere to the Infrastructure as Code (IaC) approach. Manual actions are potential sources of error and should be minimized. The only manual step involved is the configuration of credentials, which the pipeline will assist the user in setting up.

## Assumptions and Prerequisites

- You have a GitHub account.
- Docker is installed on your local machine.

## Credentials

Credentials are required to access AWS, but for security reasons, they are not stored in this repository. Instead, credentials are configured directly on the Jenkins server.

## Jenkins

Jenkins is run in a Docker container on a machine external to AWS.

The Jenkins pipeline is defined in a Jenkinsfile.

The pipeline is triggered whenever a commit is pushed to the GitHub repository.

The pipeline creates a simple CloudFormation stack that sets up an S3 bucket on AWS.

## Performance

The initial setup of Jenkins takes a long time. This is because Jenkins downloads and installs a large number of plugins. The following log snippet shows the time taken to install 81 plugins:
2023-07-21 19:48:38 2023-07-21 18:48:38.386+0000 [id=101]       INFO    hudson.PluginManager#install: Starting installation of a batch of 52 plugins plus their dependencies
...
2023-07-21 19:50:22 2023-07-21 18:50:22.386+0000 [id=102]       INFO    h.m.UpdateCenter$CompleteBatchJob#run: Completed installation of 81 plugins in 1 min 43 sec

Mind that in a Windows 11 development environment running jenkins in a Docker container and using a Windows folder as a volume, the initial setup of Jenkins takes even longer: about 30 minutes.