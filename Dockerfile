FROM centos:latest
RUN dnf install httpd -y
ADD ide-master /var/www/html
WORKDIR /var/www/html
EXPOSE 80
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
