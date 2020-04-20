pipeline {
   agent none
   stages {
      stage('Test') {
         agent {
            dockerfile {
               filename 'Dockerfile'
               additionalBuildArgs '-t spark:${BUILD_NUMBER}' 
               args '--name m'
            }
         }
         steps {
            sh 'whoami'   
         }
      }
   }
}
