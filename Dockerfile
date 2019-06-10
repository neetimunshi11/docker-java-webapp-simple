FROM tomcat:8

WORKDIR /usr/local/tomcat/
RUN rm -r webapps/*

COPY target/ROOT.war /usr/local/tomcat/webapps/