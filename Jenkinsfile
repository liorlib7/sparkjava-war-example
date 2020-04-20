pipeline {
   agent {label 'master'}

   stages {
      stage('Build') {
         steps {
            sh docker build -t 'spark:${env.BUILD_NUMBER}' .
         }
      }
   }
}
