pipeline {

  environment {
    registry = "dpev007.innovate.ibm.com:5000/rajibul/myweb"
    dockerImage = ""
  }

  agent { label 'docker' }

  stages {

    stage('Checkout Source') {
      steps {
        git 'https://github.com/rajibul007/k8s_deployment.git'
      }
    }

    stage('Build image') {
      steps{
        script {
          dockerImage = docker.build registry + ":201"
        }
      }
    }

    stage('Push Image') {
      steps{
        script {
          docker.withRegistry( "" ) {
            dockerImage.push()
          }
        }
      }
    }

    stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(configs: "myweb.yaml", kubeconfigId: "mykubeconfig")
        }
      }
    }

  }

}
