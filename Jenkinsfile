node{
    def customImage
    def mvn_home
    def dockerHubLogin
    
    stage('Initialize')
    {
        def dockerHome = tool 'docker'
        def dockerHubLogin = tool 'credLogin'
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
        
            sh "docker login -u abninder -p ${dockerHubLogin}"
            sh 'docker push abninder/test-image'
        
    }
}
