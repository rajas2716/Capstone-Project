pipeline {
    agent any 
    stages {
        stage('Build&Push image') { 
            steps { 
                sh 'make build' 
            }
        }
        stage('Test'){
            steps {
                sh 'make check' 
            }
        }
        stage('Deliver for development') {
            when {
                branch 'development' 
            }
            steps {
                sh 'make run-development'
            }
        }
        stage('Deploy for production') {
            when {
                branch 'production'  
            }
            steps {
            	sh 'make run-production'
                
            }
        }
    }
}
