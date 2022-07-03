pipeline {
    agent any

    stages {
        stage('create a war file') {
            steps {
                mvn clean package
            }
        }
        stage('Building image') {
            steps {
                docker build -t venuzs/javaapp:$BUILD_NUMBER
            }
        }
        stage('push to docker hub') {
            steps {
            '''
                docker login -u venuzs -p venu@1234
                docker push venuzs/javaapp:$BUILD_NUMBER
            '''
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying..........'
            }
        }
    }
}