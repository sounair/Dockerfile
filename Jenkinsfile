pipeline {
    agent { label 'docker' }
    stages {
        stage('Example Build') {
            steps {
                sh 'sudo docker ps'
            }
        }
        stage('sia') {
            steps {
                sh 'ls'
                sh 'sudo docker images'
            }
        }
    }
}
