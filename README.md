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
