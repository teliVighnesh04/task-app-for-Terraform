#!/bin/bash
# install mysql-server
sudo apt install mysql-server -y

# setup
sudo mysql -u root < mysql-setup.sql

# commenting bind-address to make is accessible from any host
sudo sed -i '/^bind-address/ s/^/#/1' /etc/mysql/mysql.conf.d/mysqld.cnf

# restart mySQL service
sudo service mysql restart
