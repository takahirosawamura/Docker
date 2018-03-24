# step1: base image
FROM centos:latest

# maintainer
MAINTAINER tk08 ---@gmail.com

# RUN
RUN echo hello
RUN ["echo","hello the type of shell"]
RUN ["/bin/bash", "-c","echo 'hello, I use the bash by the type of Exec'" ]


# step2: install apache
#Run yum install -y httpd
# step3: copy the file
#COPY index.html /var/www/html/
# step4: run the apache
#CMD ["/usr/sbin/httpd",  "-D", "FOREGROUND"]
