node{
    stage('SCM Checkout'){
        git 'https://github.com/abnindergill/Services.git'
    }
    stage('Compile-Package'){
        sh 'mvn package'
    }
}
