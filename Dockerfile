# Use official Tomcat image
FROM tomcat:9.0
# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*
# Copy war file to Tomcat webapps
COPY target/student-webapp.war /usr/local/tomcat/webapps/student-webapp.war
EXPOSE 8081
