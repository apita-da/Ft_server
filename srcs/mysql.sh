service mysql start
echo "CREATE DATABASE wordpress;" | mysql -u root --skip-password
echo "CREATE USER 'admin' identified by '1234';" | mysql -u root --skip-password
echo "GRANT USAGE ON wordpress.* TO 'admin'@'localhost' identified by '1234';" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'admin'@'localhost' identified by '1234';" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password
echo "update mysql.user set plugin = 'mysql_native_password' where user='root';" | mysql -u root