# Docker imageの取得
FROM centos:latest

# 作成者情報
MAINTAINER 0.1 ----@gmail.com

# apache httpdのインストール
RUN ["yum", "-y", "install", "httpd"]

# nginxのインストール
RUN ["rpm", "-Uvh", "http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm"]

RUN ["yum", "install", "-y" , "nginx"]

# Apache httpdの実行
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

# step1: base image
# FROM centos:latest

# maintainer
# MAINTAINER tk08 ---@gmail.com

# RUN
# RUN echo hello
# RUN ["echo","hello the type of shell"]
# RUN ["/bin/bash", "-c","echo 'hello, I use the bash by the type of Exec'" ]


# step2: install apache
#Run yum install -y httpd
# step3: copy the file
#COPY index.html /var/www/html/
# step4: run the apache
#CMD ["/usr/sbin/httpd",  "-D", "FOREGROUND"]
