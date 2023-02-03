pipeline {
    agent {
        docker {
            image 'openjdk:17-alpine'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh './mvnw clean install'
            }
        }
        stage('Test') {
            steps {
                sh './mvnw test'
            }
        }
        stage('Deploy') {
            steps {
                sh './mvnw spring-boot:run'
            }
        }
    }
}