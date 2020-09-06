pipeline {
    agent any 
    stages {
    	stage('Install') { 
            steps { 
                sh 'make install' 
            }
        }
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
