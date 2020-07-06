#!/bin/bash

sudo mysql -u root <<MYSQL_SCRIPT
CREATE DATABASE dbtest;
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'newuser';
GRANT ALL PRIVILEGES ON dbtest.* TO 'newuser'@'localhost';
FLUSH PRIVILEGES;
USE dbtest;
CREATE TABLE usage_log (id int(11) NOT NULL AUTO_INCREMENT, ip varchar(20), within_concurrent_user_limit tinyint(4), within_allowed_ip tinyint(4), session_id varchar(40) NULL, created_at datetime NOT NULL, last_used datetime NOT NULL, book_uri varchar(80),book_closed tinyint(4), PRIMARY KEY (id));
MYSQL_SCRIPT

echo "MySQL user created."
