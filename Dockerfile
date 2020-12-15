FROM debian:buster

EXPOSE 80 443

#INSTALL DEPENCIES 
RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install nginx
RUN apt-get -y install mariadb-server
RUN apt-get install -y php-fpm php-mysql wget
RUN apt-get install -y openssl

# COPY copy source code
#COPY src/config.inc.php 
RUN wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz
# ENTRYPOINT [ "executable" ] no entiendo mu bien pa que sirve