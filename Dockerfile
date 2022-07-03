From tomcat:8-jre8
COPY target/java-tomcat-maven-example /usr/local/tomcat/webapps
EXPOSE 8080