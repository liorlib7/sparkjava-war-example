pipeline {
   agent none
   stages {
      stage('Test') {
         agent {
            dockerfile {
               filename 'Dockerfile'
               additionalBuildArgs '-t Spark:${BUILD_NUMBER}' 
               args '--name m'
            }
         }
         steps {
            whoami   
         }
      }
   }
}
