FROM centos:latest
RUN yum install -y httpd 
RUN yum install -y zip 
RUN yum install -y unzip 
 ADD https://www.free-css.com/free-css-templates/page281/biznews.zip /var/www/html/
 WORKDIR /var/www/html
 RUN unzip biznews.zip
 RUN cp -rvf biznews/*
 RUN rm -rf biznews biznews.zip
 CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
 EXPOSE 80
