pipeline {
 agent any
    stages {
        stage('build') {
            steps {
               git credentialsId: 'cd22787f-5e6e-4675-89be-773e43062494', url: 'git@github.com:abnindergill/Services.git'
            }
        }
    }
}

