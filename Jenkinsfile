node{
    def customImage
    def mvn_home
    
    stage('Initialize')
    {
       
        mvn_home = tool 'maven'
     
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
        withCredentials([string(credentialsId: 'dockerHubLoginDetails', variable: 'dockerCredId')])
        {
            sh "docker login -u abninder -p ${dockerCredId}"
            sh 'docker push abninder/test-image'
        }
    }
}
