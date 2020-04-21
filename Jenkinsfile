pipeline {
    environment {
        registryCredential = 'dockerhub'
        dockerImage = 'spark:$BUILD_NUMBER'
    }
   agent {label 'master'}

   stages {
      stage('Build') {
         steps {
             sh 'docker run -d --name lior -p 8090:8080 tomcat:8'
             sh 'sleep 3'
             sh 'chmod +x ./httpcheck.sh'
             sh './httpcheck.sh'
         }
      }
   }
}
