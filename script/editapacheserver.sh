#!/bin/bash -eux
sudo a2enmod rewrite
sudo sed -i 's@AllowOverride None@AllowOverride All@g' -- /etc/apache2/apache2.conf
sudo systemctl restart apache2