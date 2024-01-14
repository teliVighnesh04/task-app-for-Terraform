#!/bin/bash

#update and upgrade
sudo apt-get update
sudo apt-get upgrade -y

# install mysql-server
sudo apt-get install mysql-server -y

#enable and start MySQL server
sudo systemctl enable mysql
sudo systemctl start mysql

wait
# setup
sudo mysql -u root < mysql-setup.sql

# commenting bind-address to make is accessible from any host
sudo sed -i '/^bind-address/ s/^/#/1' /etc/mysql/mysql.conf.d/mysqld.cnf

# restart mySQL service
sudo service mysql restart
