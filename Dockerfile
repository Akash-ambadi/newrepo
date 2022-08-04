FROM centos:latest
RUN yum install -y apache2
RUN sudo yum install -y wget 
RUN sudo yum install -y unzip 
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page281/dotnet.zip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/dotnet.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip dotnet.zip
RUN cp -r dotnet/* 
RUN rm -rf dotnet dotnet.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
