FROM ubuntu:latest
RUN apt-get update && apt-get -y  upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir TOMCAT10
RUN wget https://downloads.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-10.0.27.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-10.0.27/* TOMCAT10
EXPOSE 8082
CMD TOMCAT10/bin/catalina.sh run
