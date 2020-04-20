pipeline {
    environment {
        registry = "gustavoapolinario/docker-test"
        registryCredential = 'dockerhub'
        dockerImage = 'spark:$BUILD_NUMBER'
    }
   agent {label 'master'}

   stages {
      stage('Build') {
         steps {
            sh 'docker build -t spark:$BUILD_NUMBER .'
         }
      }
      stage ('Test') {
          steps {
              sh 'docker run -d -p 8090:8080 spark:$BUILD_NUMBER'
              sh 'sleep 7'
              sh 'chmod +x ./httpcheck.sh'
              sh './httpcheck.sh'
          }
      }
      stage ('Deploy') {
          steps {
              script {
                  docker.withRegistry('', registryCredential ) {
                      dockerImage.push()
                  }
              }
          }
      }
      stage ('save space') {
          steps {
              sh 'docker image prune -f'
          }
      }
   }
}
