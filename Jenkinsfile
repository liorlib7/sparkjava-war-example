pipeline {
    environment {
        registryCredential = 'dockerhub'
        dockerImage = 'spark:$BUILD_NUMBER'
    }
   agent {label 'master'}

   stages {
      stage('Build') {
         steps {
             sh 'chmod +x "$WORKSPACE/httpcheck.sh"'
             sh 'bash "$WORKSPACE/httpcheck.sh"'
         }
      }
   }
}
