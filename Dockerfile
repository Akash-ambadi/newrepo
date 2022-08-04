FROM centos:latest
MAIANTAINER akash
RUN yum install -y httpd \
  zip\
 unzip
 ADD https://www.tooplate.com/zip-templates/2125_artxibition.zip /var/www/html/
 WORKDIR /var/www/html
 RUN unzip 2125_artxibition.zip
 RUN cp -rvf 2125_artxibition/*
 RUN rm -rf 2125_artxibition 2125_artxibition.zip
 CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
 EXPOSE 80
