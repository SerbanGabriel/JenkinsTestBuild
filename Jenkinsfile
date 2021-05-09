pipeline {
    agent any

    stages {
        stage('Gradle') {
            steps {
                script{
                    sh 'chmod +x gradlew'
                    sh './gradlew clean'
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}