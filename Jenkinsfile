pipeline {
    agent any

    stages {
        stage('Gradle') {
            steps {
                scripts{
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