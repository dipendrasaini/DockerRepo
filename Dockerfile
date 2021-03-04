FROM centos:latest
MAINTAINER dipedrasaini24@gmail.com
RUN yum install -y httpd 
RUN yum install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page264/pullo.zip  /var/www/html/
WORKDIR /var/www/html
RUN unzip pullo.zip
RUN cp -rvf pullo/* .
RUN rm -rf pullo pullo.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80

#https://www.free-css.com/assets/files/free-css-templates/download/page264/pullo.zip =>pullo.zip
