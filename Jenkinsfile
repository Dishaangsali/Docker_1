pipeline {
    agent any
    stages {
        stage('Checkout From SCM') {
            steps {
                git credentialsId: '9ecc6334-6f72-4490-b946-fc6104e12966', url: 'https://github.com/Dishaangsali/Docker_1.git'
            }
        }
        stage('Build') {
            steps {
               bat 'docker build -t image1 .'
            }
        }
        stage('Run') {
            steps {
                bat 'docker run -t image1'
            }
        }
        stage('Authentication') {
            steps {
                bat 'docker tag image1 dishaangsali/image1:%BUILD_ID%'
            }
        }
        stage('Push') {
            steps {
                bat 'docker push dishaangsali/image1:%BUILD_ID%'
            }
        }
    }
}
