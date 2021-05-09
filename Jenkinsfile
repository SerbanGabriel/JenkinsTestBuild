pipeline {
    agent {
        docker{
            image:'sgaby100/test:0.1'
        }
    }

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