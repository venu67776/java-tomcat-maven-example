From tomcat:8-jre8
COPY target/myapp.war /usr/local/tomcat/webapps
EXPOSE 8080