From tomcat:8-jre8
WORKDIR workspace/Docker/
COPY target/java-tomcat-maven-example.war /usr/local/tomcat/webapps
EXPOSE 8080