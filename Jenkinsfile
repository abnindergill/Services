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
        sh ' docker build -t abninder/test-image . '
    }
    stage('Push image')
    {
        withCredentials([string(credentialsId: 'dockerHubLoginDetails', variable: 'dockerCredId')]) {
        {
            sh "docker login -u abninder -p ${dockerCredId}"
            sh 'docker push abninder/test-image'
        }
    }
}
