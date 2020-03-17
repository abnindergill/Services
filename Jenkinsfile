node{
    def customImage
    stage('SCM Checkout'){
        git 'https://github.com/abnindergill/Services.git'
    }
    stage('Compile-Package'){
        def mvn_home = tool name: 'maven', type: 'maven'
        sh "${mvn_home}/bin/mvn package"
    }
    stage('Build image'){
        customImage = docker.build("abninder/test:${env.BUILD_ID}")
    }
    stage('Push image'){
        docker.withRegistry('https://hub.docker.com/repository/docker/abninder/hello-test', 'docker-hub-credentials') {
      dockerImage.push()
    }
    }
}
