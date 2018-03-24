# step1: base image
FROM centos:latest
# step2: install apache
Run yum install -y httpd
# step3: copy the file
COPY index.html /var/www/html/
# step4: run the apache
CMD ["/usr/sbin/httpd",  "-D", "FOREGROUND"]
