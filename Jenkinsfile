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

    stage('Verify Files') {
      steps {
        dir('terraform-infra/environment/dev') {
          sh 'ls -la'
        }
      }
    }

    stage('Init') {
      steps {
        dir('terraform-infra/environment/dev') {
          sh 'terraform init'
        }
      }
    }

    stage('Plan') {
      steps {
        dir('terraform-infra/environment/dev') {
          sh 'terraform plan -out=tfplan'
        }
      }
    }

    stage('Apply') {
      steps {
        dir('terraform-infra/environment/dev') {
          terraform apply -auto-approve
        }
      }
    }
  }
}
