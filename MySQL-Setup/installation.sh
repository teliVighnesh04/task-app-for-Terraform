# update system 
sudo apt-get update

# take clone of project
git clone https://github.com/teliVighnesh04/task-app-for-Terraform.git
cd task-app-for-Terraform/MySQL-Setup/ 

# install mysql-server
sudo apt install mysql-server -y

# setup
sudo mysql -u root < mysql-setup.sql

# commenting bind-address to make is accessible from any host
sudo sed -i '/^bind-address/ s/^/#/1' /etc/mysql/mysql.conf.d/mysqld.cnf

# restart mySQL service
sudo service mysql restart
