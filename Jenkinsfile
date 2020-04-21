pipeline {
    environment {
        registryCredential = 'dockerhub'
        dockerImage = 'spark:$BUILD_NUMBER'
    }
   agent {label 'master'}

   stages {
      stage('Build') {
         steps {
             sh '''
             ls -la
             chmod +x ./httpcheck.sh
             bash ./httpcheck.sh
             '''
         }
      }
   }
}
