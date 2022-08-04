FROM centos
RUN yum install -y httpd
RUN yum install -y wget 
RUN yum install -y unzip 
RUN systemctl start httpd
RUN systemctl enable httpd
RUN wget https://www.tooplate.com/zip-templates/2130_waso_strategy.zip
ADD https://www.tooplate.com/zip-templates/2130_waso_strategy.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip 2130_waso_strategy.zip
RUN cp -r 2130_waso_strategy/* 
RUN systemctl restart httpd
RUN rm -rf 2130_waso_strategy 2130_waso_strategy.zip
CMD ["/usr/sbin/httpd", "#!/bin/bash" "-D", "FOREGROUND"]
EXPOSE 80
