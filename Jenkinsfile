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
        sh 'echo hola'
      }
    }
    stage('Upgrade docker image') {
      steps {
        sh 'kubectl apply -f kubernetes/cluster.yml'
      }
    }
  }
}