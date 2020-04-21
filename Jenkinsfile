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
             chmod +x ./dm.sh
             ls -la
             cat httpcheck.sh
             ./dm.sh
             '''
         }
      }
   }
}
