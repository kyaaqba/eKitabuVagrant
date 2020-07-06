#!/bin/bash

sudo mkdir /var/www/html/epub_content
sudo git clone https://github.com/kyaaqba/eKitabuContent.git
sudo unzip eKitabuContent/Content.zip -d /var/www/html/epub_content