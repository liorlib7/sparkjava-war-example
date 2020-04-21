pipeline {
    environment {
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
              sh 'docker run -d --name www -p 8090:8080 spark:$BUILD_NUMBER'
              sh 'sleep 7'
              sh 'chmod +x ./httpcheck.sh'
              sh './httpcheck.sh'
          }
      }
      stage ('Deploy') {
          steps {
              sh 'docker tag spark:$BUILD_NUMBER liorlieb7/spark:$BUILD_NUMBER'
              sh 'docker push liorlieb7/spark:$BUILD_NUMBER'
          }
      }
      stage ('save space') {
          steps {
              sh 'docker image prune -f'
              sh 'docker rmi spark:$BUILD_NUMBER liorlieb7/spark:$BUILD_NUMBER'
          }
      }
   }
}
