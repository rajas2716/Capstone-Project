pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps { 
                sh 'make build' 
            }
        }
        stage('Test'){
            steps {
                sh 'make check' 
            }
        }
        stage('Deploy') {
            steps {
                sh 'make run'
            }
        }
    }
}
