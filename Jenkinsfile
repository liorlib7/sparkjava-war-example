pipeline {
   agent none
   stages {
      stage('Test') {
         agent {
            dockerfile {
               filename 'Dockerfile'
               additionalBuildArgs '-t spark:${BUILD_NUMBER}' 
               args '--name md'
            }
         }
         steps {
            sh 'whoami'   
         }
      }
   }
}
