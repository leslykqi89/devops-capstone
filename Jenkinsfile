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
    stage('Push Image') {
      steps {
        withAWS(credentials: 'udacity', region: 'us-east-1') {
          sh 'make push'
        }

      }
    }
    stage('Upgrade docker image') {
      steps {
        sh 'kubectl apply -f kubernetes/cluster.yml'
      }
    }
  }
}