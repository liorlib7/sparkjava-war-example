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
             chmod +x ./temp2.sh
             ls -la
             cat httpcheck.sh
             ./temp2.sh
             '''
         }
      }
   }
}
