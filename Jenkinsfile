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
                sh ./change.sh
            '''
            }
        }
        // stage('Deploy App on k8s') {
        //     steps {
        //     sshagent(['k8s']) {
        //     sh "scp -o StrictHostKeyChecking=no tomcat.yaml ubuntu@18.206.154.213:/home/ubuntu"
        //     script {
        //         try{
        //             sh "ssh ubuntu@18.206.154.213 kubectl create -f ."
        //         }catch(error){
        //             sh "ssh ubuntu@18.206.154.213 kubectl create -f ."
        //     }
        // }
        // }
      
        // }
        //   }
        //}
        }
    }
}