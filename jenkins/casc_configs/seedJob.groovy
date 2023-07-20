pipelineJob('hello-world') {
  definition {
    cpsScm {
      scm {
        git {
          remote { url(System.getenv('GIT_REPO_URL')) }
          branches('**')
          scriptPath('pipeline/Jenkinsfile')
          extensions { }
        }
      }
    }
  }
}
