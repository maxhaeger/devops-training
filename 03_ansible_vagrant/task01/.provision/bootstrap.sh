#!/usr/bin/env bash

sudo apt-get update
sudo apt-get -y install nginx

# nginx config
sudo cp /vagrant/.provision/nginx/nginx.conf /etc/nginx/sites-available/site.conf
sudo chmod 644 /etc/nginx/sites-available/site.conf
sudo ln -sf /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/site.conf

# clean default
sudo rm -f /etc/nginx/sites-enabled/default

# symlink /var/www => /vagrant
sudo ln -sfn /vagrant /var/www

# Restart Nginx to apply the new configuration
sudo service nginx restart
