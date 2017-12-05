FROM tomcat:8

RUN rm /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY tomcat/context.xml /usr/local/tomcat/webapps/manager/META-INF/

RUN rm /usr/local/tomcat/conf/tomcat-users.xml
COPY tomcat/tomcat-users.xml /usr/local/tomcat/conf

COPY target/webapp-sample-1.0.0.war /usr/local/tomcat/webapps



CMD ["catalina.sh", "run"]