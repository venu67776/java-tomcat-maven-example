pipeline {
    agent any

    stages {
        stage('create a war file') {
            steps{
          sh '''
            mvn clean package
          '''
        }
        }
        stage('Building image') {
            steps {
            sh '''
                docker build -t venuzs/javaapp:$BUILD_NUMBER
            '''
            }
        }
        stage('push to docker hub') {
            steps {
            sh '''
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