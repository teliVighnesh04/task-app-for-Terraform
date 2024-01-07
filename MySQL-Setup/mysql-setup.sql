-- check if the user already exists
SELECT user FROM mysql.user WHERE user = 'user' AND host = '%';

-- create user if it doesn't exist
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';

-- grant privileges
GRANT ALL PRIVILEGES ON *.* TO 'user'@'%';
FLUSH PRIVILEGES;

-- create database
CREATE DATABASE IF NOT EXISTS myDb;
USE myDb;

-- create table
CREATE TABLE IF NOT EXISTS messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message TEXT
);
