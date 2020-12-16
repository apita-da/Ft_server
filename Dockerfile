FROM debian:buster

EXPOSE 80 443

#INSTALL DEPENCIES 
RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install nginx
RUN apt-get -y install mariadb-server
RUN apt-get install -y php-fpm php-mysql wget
RUN apt-get install -y openssl


RUN wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && \
	mv wordpress /var/www/html/wordpress


# COPY copy source code
COPY src/config.inc.php /var/www/html/phpmyadmin/
COPY src/wp_config.php /var/www/html/wordpress/
COPY src/index.html /var/www/html/
# ENTRYPOINT [ "executable" ] no entiendo mu bien pa que sirve
# CMD ?