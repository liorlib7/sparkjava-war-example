pipeline {
    environment {
        registryCredential = 'dockerhub'
        dockerImage = 'spark:$BUILD_NUMBER'
    }
   agent {label 'master'}

   stages {
      stage('Build') {
         steps {
             sh 'echo ${env.WORKSPACE}'
             sh 'echo ${env.JJOB_NAME}'
         }
      }
   }
}
