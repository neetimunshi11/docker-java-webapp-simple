FROM tomcat:8

WORKDIR /usr/local/tomcat/

## Delete all existing SAMPLE applications
RUN rm -r webapps/*

## Copy project WAR file 
COPY target/ROOT.war /usr/local/tomcat/webapps/