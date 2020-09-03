#!/bin/bash -e

echo "Database name: "
read name

sudo mysql -u root -e "CREATE USER '${name}_u'@'localhost' IDENTIFIED BY '${name}';"
sudo mysql -u root -e "CREATE DATABASE ${name};"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON ${name}.* TO '${name}_u'@'localhost';"
sudo mysql -u root -e "FLUSH PRIVILEGES;"

echo "Database: ${name}"
echo "User: ${name}_u"
echo "Password: ${name}"
