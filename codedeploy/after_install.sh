#!/bin/bash
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:certbot/certbot
sudo apt-get install -y python-certbot-apache
sudo systemctl restart apache2
sudo certbot --apache -d uth.today -m admin@ncplinc.com --agree-tos -n
sudo service apache2 reload