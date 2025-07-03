pipeline {
  agent any

  environment {
    AWS_REGION = 'us-east-1'
    AWS_ACCESS_KEY_ID = credentials('aws-access-key')
    AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main', credentialsId: 'github-token', url: 'https://github.com/s-aditi17/terraform-jenkins.git'
      }
    }

    stage('Init') {
      steps {
        dir('environments/dev') {
          sh 'terraform init'
        }
      }
    }

    stage('Plan') {
      steps {
        dir('environments/dev') {
          sh 'terraform plan -out=tfplan'
        }
      }
    }

    stage('Apply') {
      steps {
        dir('environments/dev') {
          input message: 'Approve apply?', ok: 'Apply'
          sh 'terraform apply tfplan'
        }
      }
    }
  }
}
