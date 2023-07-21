pipelineJob('hello-world') {
  definition {
    cpsScm {
      scm {
        git {
          remote {
            url(System.getenv('GIT_REPO_URL'))
            credentials('github_ssh_key')
          }
          branches('**')
          scriptPath('pipeline/Jenkinsfile')
          extensions { }
        }
      }
    }
  }
}
