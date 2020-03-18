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
        customImage = docker.build("test-image:${env.BUILD_ID}")
    }
    stage('Push image')
    {
       docker.withRegistry('https://hub.docker.com/repository/docker/abninder/hello-test', 'docker-hub-credentials') 
       {
            /* Push the container to the custom Registry */
            customImage.push()
        }       
    }
}
