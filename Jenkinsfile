pipeline {
    agent any

    stages {
        stage('create a war file') {
            steps{
          sh '''
            mvn clean package
            mv target/*war myapp.war
          '''
        }
        }
        stage('Building image') {
            steps {
            sh '''
                docker build -t venuzs/javaapp:v$BUILD_NUMBER .
            '''
            }
        }
        stage('push to docker hub') {
            steps {
            sh '''
                docker login -u venuzs -p venu@1234
                docker push venuzs/javaapp:v$BUILD_NUMBER
            '''
            }
        }
        stage('Deploy to kubernetes') {
            steps {
                echo 'Deploying..........'
            }
        }
    }
}