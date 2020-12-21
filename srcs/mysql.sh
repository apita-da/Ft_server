service mysql start
echo "CREATE DATABASE wordpress;" | mysql -u root --skip-password
echo "CREATE USER 'apita-da' identified by '1234';" | mysql -u root --skip-password
echo "GRANT USAGE ON wordpress.* TO 'apita-da'@'localhost' identified by '1234';" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'apita-da'@'localhost' identified by '1234';" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password
echo "update mysql.user set plugin = 'mysql_native_password' where user='apita-da';" | mysql -u root