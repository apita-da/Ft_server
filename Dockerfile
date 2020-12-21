FROM debian:buster

EXPOSE 80 443

#INSTALL services
RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install nginx mariadb-server php-fpm php-mysql wget openssl

# mysql
COPY srcs/mysql.sh ./
RUN sh mysql.sh

#wordpress
RUN wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && \
	mv wordpress /var/www/html/wordpress/ && rm latest.tar.gz

COPY srcs/wp-config.php var/www/html/wordpress/


#PhpMyAdmin
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz && tar -xzvf /phpMyAdmin-5.0.4-all-languages.tar.gz && \
    mv phpMyAdmin-5.0.4-all-languages /var/www/html/phpmyadmin/ && rm phpMyAdmin-5.0.4-all-languages.tar.gz

COPY srcs/config.inc.php var/www/html/phpmyadmin/

#ssl
RUN openssl req -x509 -nodes -days 133 -newkey rsa:2048 -subj "/C=SP/ST=Spain/L=Madrid/O=42/CN=localhost" -keyout /etc/ssl/private/apita-da.key -out /etc/ssl/certs/apita-da.crt
#autoindex

#html
COPY srcs/index.html var/www/html/
COPY srcs/config_nginx  /etc/nginx/sites-available/default


# COPY copy source code
# ENTRYPOINT [ "executable" ] no entiendo mu bien pa que sirve
CMD service nginx start && \
    service php7.3-fpm start && \
    service mysql start && \
    sleep infinity