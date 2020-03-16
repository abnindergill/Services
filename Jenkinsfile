pipeline {
 agent any
    stages {
        stage('build') {
            steps {
               git credentialsId: '06e8e37c-9b59-47ad-8bfb-176becc3901a', url: 'https://github.com/abnindergill/Services.git'
               sh 'mvn -B clean verify'
            }
        }
    }
}

