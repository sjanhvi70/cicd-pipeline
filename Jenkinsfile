pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                echo 'Cloning GitHub Repo...'
                git 'https://github.com/sjanhvi70/cicd-pipeline.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker Image...'
                sh 'docker build -t cicd-app .'
            }
        }

        stage('Clean Old Container') {
            steps {
                echo 'Removing old container if it exists...'
                sh '''
                    docker stop cicd-container || true
                    docker rm cicd-container || true
                '''
            }
        }

        stage('Run Docker Container') {
            steps {
                echo 'Running Docker Container...'
                sh 'docker run -d -p 5000:5000 --name cicd-container cicd-app'
            }
        }
    }
}
