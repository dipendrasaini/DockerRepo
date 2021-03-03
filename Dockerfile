FROM centos:latest
MAINTAINER dipedrasaini24@gmail.com
RUN yum install -y httpd 
RUN yum install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page263/dpot.zip  /var/www/html/
WORKDIR /var/www/html
RUN unzip dpot.zip
RUN cp -rvf dpot/*
RUN rm -rf dpot dpot.zip
CMD ["/user/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80

#https://www.free-css.com/assets/files/free-css-templates/download/page264/pullo.zip =>pullo.zip
