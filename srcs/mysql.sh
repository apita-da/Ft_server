service mysql start
echo "CREATE DATABASE wordpress;" | mysql -u root
echo "CREATE USER 'apita-da' identified by '1234';" | mysql -u root
echo "GRANT USAGE ON wordpress.* TO 'apita-da'@'localhost' identified by '1234';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'apita-da'@'localhost' identified by '1234';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root