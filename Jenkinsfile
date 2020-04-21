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
             chmod +x httpcheck.sh
             ls -la
             cat httpcheck.sh
             ./httpcheck.sh
             '''
         }
      }
   }
}
