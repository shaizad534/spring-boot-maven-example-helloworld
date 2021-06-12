FROM tomcat:8.0-alpine
# Take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/tomcat/webapps/SpringBootMavenExample.war
ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
EXPOSE 8081
CMD [ "catalina.sh" , "run"]
