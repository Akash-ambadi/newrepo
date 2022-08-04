FROM centos
RUN yum install httpd -y
RUN yum install -y zip 
RUN yum install -y wget 
RUN yum install -y unzip 
RUN systemctl start httpd
RUN systemctl enable httpd
RUN wget https://www.tooplate.com/zip-templates/2098_health.zip
 ADD https://www.tooplate.com/zip-templates/2098_health.zip /var/www/html/
 WORKDIR /var/www/html
 RUN 2098_health.zip
 RUN cp -r 2098_health/* 
 RUN systemctl restart httpd
 RUN rm -rf 2098_health 2098_health.zip
 CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
 EXPOSE 80
