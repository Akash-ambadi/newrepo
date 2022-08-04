FROM centos
RUN sudo yum install wget unzip httpd -y
RUN sudo yum install -y zip 
RUN sudo systemctl start httpd
RUN sudo systemctl enable httpd
 ADD https://www.tooplate.com/zip-templates/2098_health.zip /var/www/html/
 WORKDIR /var/www/html
 RUN 2098_health.zip
 RUN cp -r 2098_health/* 
 RUN sudo systemctl restart httpd
 RUN rm -rf 2098_health 2098_health.zip
 CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
 EXPOSE 80
