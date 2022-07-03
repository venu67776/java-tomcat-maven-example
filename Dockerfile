From tomcat:8-jre8
COPY Docker/target/java-tomcat-maven-example.war /usr/local/tomcat/webapps
EXPOSE 8080