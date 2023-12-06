#!/usr/bin/env bash
# script that sets up your web servers for the deployment of web_static

sudo apt-get update
sudo apt-get -y install nginx

# Creating folders
sudo mkdir -p /data/
sudo mkdir -p /data/web_static/
sudo mkdir -p /data/web_static/releases/
sudo mkdir -p /data/web_static/shared/
sudo mkdir -p /data/web_static/releases/test/
sudo touch /data/web_static/releases/test/index.html

# Create a fake HTML file
echo "<html>
  <head>
  </head>
  <body>
    Holberton School
  </body>
</html>" | sudo tee /data/web_static/releases/test/index.html

# Create a symbolic link
sudo ln -s -f /data/web_static/releases/test/ /data/web_static/current

# Give ownership of the /data/ folder to the ubuntu
sudo chown -R ubuntu:ubuntu /data/

# Update the Nginx configuration
sudo sed -i '/listen 80 default_server/a location /hbnb_static { alias /data/web_static/current/;}' /etc/nginx/sites-enabled/default

# Restart nginx to apply changes
sudo service nginx restart
