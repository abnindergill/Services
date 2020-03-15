node {
   stage('Checkout') {
           git 'https://github.com/abnindergill/Services'
       }

   stage('Build') {
           sh 'mvn -B -V -U -e clean package'
       }
}
