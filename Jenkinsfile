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
        sh '''docker build -t registry-p7 ./images
docker tag registry-p7:latest 925348302516.dkr.ecr.us-east-1.amazonaws.com/registry-p7:1.0.${BUILD_NUMBER}'''
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
        sh 'docker push 925348302516.dkr.ecr.us-east-1.amazonaws.com/registry-p7:1.0.${BUILD_NUMBER}'
      }
    }
    stage('Upgrade Kubernetes') {
      steps {
        sh 'kubectl set image deployments/apache-deployment apache-deployment=925348302516.dkr.ecr.us-east-1.amazonaws.com/registry-p7:1.0.${BUILD_NUMBER}'
      }
    }
  }
}