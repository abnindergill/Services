node{
    def customImage
    def mvn_home
    
    stage('Initialize')
    {
        def dockerHome = tool 'docker'
        mvn_home = tool 'maven'
        env.PATH = "${dockerHome}/bin:${mvn_home}/bin:${env.PATH}"
    }
   
    stage('SCM Checkout'){
        git 'https://github.com/abnindergill/Services.git'
    }
    
    stage('Compile-Package'){
        sh "${mvn_home}/bin/mvn package"
    }
   
    stage('Build image'){
        customImage = docker.build("abninder/test-image:${env.BUILD_ID}")
    }
    stage('Push image')
    {
       docker.withRegistry('', 'docker-hub-credentials') 
       {
            /* Push the container to the custom Registry */
            customImage.push()
        }       
    }
}
