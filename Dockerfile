FROM centos:latest
RUN yum install -y httpd
RUN yum install -y wget 
RUN yum install -y unzip 
RUN systemctl start httpd
RUN systemctl enable httpd
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/dotnet.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip dotnet.zip
RUN cp -r dotnet/* 
RUN systemctl restart httpd
RUN rm -rf dotnet dotnet.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
