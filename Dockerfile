FROM debian:buster

EXPOSE 80 443

#INSTALL services
RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install nginx
RUN apt-get -y install mariadb-server
RUN apt-get install -y php-fpm php-mysql wget

#wordpress
RUN wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && \
	mv wordpress /var/www/html/wordpress && rm latest.tar.gz
COPY srcs/wp_config.php /var/www/html/wordpress/
#MySQL


#PhpMyAdmin
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz && tar -xzvf /phpMyAdmin-5.0.4-all-languages.tar.gz && \
    mv phpMyAdmin-5.0.4-all-languages /var/www/html/phpmyadmin/ && rm phpMyAdmin-5.0.4-all-languages.tar.gz
COPY srcs/config.inc.php /var/www/html/phpmyadmin/

#ssl
RUN apt-get install -y openssl
#autoindex

#html
COPY srcs/index.html /var/www/html/localhost


# COPY copy source code
# ENTRYPOINT [ "executable" ] no entiendo mu bien pa que sirve
CMD service nginx start && \
    service php7.3-fpm start && \
    service mysql start && \
    bin/bash