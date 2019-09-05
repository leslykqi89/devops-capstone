pipeline {
  agent any
  stages {
    stage('Check Dockerfile') {
      steps {
        sh 'make lint'
      }
    }
    stage('Build image') {
      steps {
        sh 'make build'
      }
    }
    stage('Login to ECR') {
      steps {
        withAWS(credentials: 'udacity', region: 'us-east-1') {
          script {
            def login = ecrLogin()
            sh "${login}"
          }

        }

      }
    }
    stage('Push image') {
      steps {
        sh 'docker push 925348302516.dkr.ecr.us-east-1.amazonaws.com/registry-p7'
      }
    }
  }
}