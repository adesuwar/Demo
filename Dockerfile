FROM centos:centos7

LABEL MAINTAINER=fredarolande@gmail.com

#Install Node etc...
RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install nodejs npm; yum clean all 

# Document the port the app listen on
EXPOSE 8080

#Run this command when the container starts
CMD bash 