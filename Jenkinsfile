pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh './mvnw clean install -U'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t thanabodee2661/demo-server:latest .'
            }
        }
        stage('Push Docker Image') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker_hub', usernameVariable: 'DOCKER_HUB_USER', passwordVariable: 'DOCKER_HUB_PASSWORD')]) {
                    sh 'docker login -u $DOCKER_HUB_USER -p $DOCKER_HUB_PASSWORD'
                    sh 'docker push thanabodee2661/demo-server:latest'
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
            }
        }
    }
}