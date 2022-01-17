FROM centos:latest
RUN yum install java -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.56/bin/apache-tomcat-9.0.56.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.56.tar.gz
RUN mv apache-tomcat-9.0.56/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh","run"]
COPY ./*.war /usr/local/tomcat/webapps
