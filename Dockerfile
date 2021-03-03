FROM centos:latest
MAINTAINER dipedrasaini24@gmail.com
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page263/dpot.zip  /var/www/html/
WORKDIR /var/www/html
RUN unzip dpot.zip
RUN cp -rvf dpot/*
RUN rm -rf dpot.zip dpot.zip.zip
CMD ["/user/sbin/httpd","-D,"FOREGROUND"]
EXPOSE 80

#https://www.free-css.com/assets/files/free-css-templates/download/page264/pullo.zip =>pullo.zip
