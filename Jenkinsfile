node{
    stage('SCM Checkout'){
        git 'https://github.com/abnindergill/Services.git'
    }
    stage('Compile-Package'){
        def mvn_home = tool name: 'maven', type: 'maven'
        sh "${mvn_home}/bin/mvn package"
    }
}
