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
      docker.withRegistry('https://925348302516.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:udacity') {
        docker.image('registry-p7').push('latest')
      }
    }
    stage('Upgrade docker image') {
      steps {
        sh 'kubectl apply -f kubernetes/cluster.yml'
      }
    }
  }
}