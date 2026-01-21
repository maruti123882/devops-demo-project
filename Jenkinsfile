pipeline {
    agent any

    tools {
    maven 'Maven 3'
}


    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
    url: 'https://github.com/maruti123882/devops-demo-project.git'

            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t devops-app:1.0 .'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker run -d -p 8081:8080 devops-app:1.0'
            }
        }
    }
}
