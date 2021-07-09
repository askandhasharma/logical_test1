pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'javac App.java'
                sh 'java App'
            }
        }
    }
}