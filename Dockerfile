FROM centos
MAINTAINER naveenreddtmarella1@gmail.com
RUN yum install java-1.8.0-openjdk
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
RUN wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.83/bin/apache-tomcat-8.5.83.tar.gz
RUN tar -xvf apache-tomcat-8.5.82.tar.gz
RUN apache-tomcat-8.5.83 tomcat8
RUN rm -f apache-tomcat-8.5.82.tar.gz
COPY /var/lib/jenkins/workspace/Test_maven_project/target/*.war /opt/tomcat8/webapps
EXPOSE 8082
CMD ["/opt/tomcat8/bin/catalina.sh", "run"]
