# TODO

- [x] Initiate Jenkins within a Docker container.
- [x] Configure as code Jenkins initial plugins: configuration-as-code, pipeline-aws, aws-credentials, and jenkins-cloudformation-plugin.
- [+] Organise Jenkins configuration into folder jenkins.
- [-] Implement Hello World pipeline.
- [ ] Configure AWS credentials directly on the Jenkins server for secure access.
- [ ] Define the Jenkins pipeline using a Jenkinsfile in the project root.
- [ ] Create a GitHub repository for the project and configure webhook settings to trigger the Jenkins pipeline upon each push event.
- [ ] Write and test the AWS CloudFormation template for creating an S3 bucket.
- [ ] Test the entire pipeline by pushing a commit to the GitHub repository and ensure that it triggers the Jenkins job.
- [ ] Verify that the CloudFormation stack is correctly created on AWS and the S3 bucket is operational.
- [ ] Document the setup process, usage instructions, and any troubleshooting tips in the README file.