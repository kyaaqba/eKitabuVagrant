#!/bin/bash

sudo rm -R /var/www/html/* 
echo 'Enter bitbucket.org/bluetown-ekitabu username and password'
sudo git clone https://kyaaqba:3L5mYPGRmuKTStJ4L8zT@bitbucket.org/bluetown-ekitabu/bluetown-cloud-reader.git /var/www/html/
cd /var/www/html
sudo git submodule update --init --recursive
sudo sed -i 's@provide_name_of_db@dbtest@g' -- /var/www/html/.env 
sudo sed -i 's@provide_name_of_user@newuser@g' -- /var/www/html/.env 
sudo sed -i 's@provide_user_password@newuser@g' -- /var/www/html/.env 
sudo npm run prepare:all
sudo npm run dist
