From tomcat:8-jre8
COPY /var/lib/jenkins/workspace/Docker/target/java-tomcat-maven-example.war /usr/local/tomcat/webapps
EXPOSE 8080