pipeline {
    agent any

    environment {
        IMAGE_NAME = 'sajidcurious/learn'
        DOCKER_CREDENTIALS_ID = '1b667c96-e806-480e-91a4-1f508a2a0a63'
    }

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/SajidCurious/sample_repo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t $IMAGE_NAME .'
                    sh 'docker tag $IMAGE_NAME sajidcurious/learn:latest'
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: DOCKER_CREDENTIALS_ID]) {
                    sh 'docker push $IMAGE_NAME'
                }
            }
        }
    }
}
