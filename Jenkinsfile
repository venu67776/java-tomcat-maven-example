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
                docker build -t venuzs/javaapp:v-0.0.$BUILD_NUMBER .
            '''
            }
        }
        stage('push to docker hub') {
            steps {
            sh '''
                docker login -u venuzs -p venu@1234
                docker push venuzs/javaapp:v-0.0.$BUILD_NUMBER
                sed "s/test/venuzs:v-0.0.$BUILD_NUMBER/g" tomcat.yml >myapp.yml
                
            '''
            }
        }
        stage('Deploy App on k8s') {
            steps {
            sshagent(['k8s']) sshagent(['centos']) {

            
            sh "scp -o StrictHostKeyChecking=no myapp.yml ubuntu@18.205.159.242:/home/ubuntu"
        //     script {
        //         try{
        //             sh "ssh ubuntu@18.206.154.213 kubectl create -f ."
        //         }catch(error){
        //             sh "ssh ubuntu@18.206.154.213 kubectl apply -f ."
        //     }
        // }
        }
      
        }
          }
        }
        }
}
