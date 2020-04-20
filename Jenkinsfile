pipeline {
    environment {
        registryCredential = 'dockerhub'
        dockerImage = 'spark:$BUILD_NUMBER'
    }
   agent {label 'master'}

   stages {
      stage('Build') {
         steps {
             sh 'echo $WORKSPACE'
             sh 'echo $JOB_NAME'
         }
      }
   }
}
