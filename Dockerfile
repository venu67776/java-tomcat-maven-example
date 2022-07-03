From tomcat:8-jre8
WORKDIR java-tomcat-maven-example/target
COPY target/java-tomcat-maven-example /usr/local/tomcat/webapps
EXPOSE 8080