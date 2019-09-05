pipeline {
  agent any
  stages {
    stage('Check Dockerfile') {
      steps {
        sh 'make lint'
      }
    }
    stage('Push Image') {
      steps {
        withAWS(credentials: 'udacity', region: 'us-east-1') {
          sh '''docker build -t registry-p7 ./images
docker tag registry-p7:latest 925348302516.dkr.ecr.us-east-1.amazonaws.com/registry-p7:latest
docker push 925348302516.dkr.ecr.us-east-1.amazonaws.com/registry-p7:latest'''
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