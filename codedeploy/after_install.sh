#!/bin/bash
domain1="uth.today"
domain2="today"



if [ "$DEPLOYMENT_GROUP_NAME" == "Static" ]; then
  # Copy to /var/www/staging

sudo sed -i 's/domain/$domain1/g' /etc/apache2/site-enabled/vhost.conf
sudo certbot --apache -d "${domain1}" -m admin@ncplinc.com --agree-tos -n
sudo service apache2 reload
else
sudo sed -i 's/domain/$domain2/g' /etc/apache2/site-enabled/vhost.conf
sudo certbot --apache -d "${domain2}" -m admin@ncplinc.com --agree-tos -n
sudo service apache2 reload
fi

