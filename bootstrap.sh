#!/bin/sh

# add gremlin repo and GPG key
echo "deb https://deb.gremlin.com/ release non-free" | sudo tee /etc/apt/sources.list.d/gremlin.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C81FC2F43A48B25808F9583BDFF170F324D41134 9CDB294B29A5B1E2E00C24C022E8EF3461A50EF6

# install gremlind configuration if present
if [ -f /vagrant/gremlind ]
then
	echo "bootstrap.sh: installing gremlind in /etc/default/"
	cp /vagrant/gremlind /etc/default/
fi

# install nginx and gremlind
apt-get update
apt-get install -y nginx
apt-get install -y gremlin gremlind

# install html files if present
if [ -f /vagrant/html/index.html ]
then
	echo "bootstrap.sh: installing html in /var/www/html for nginx"
	rm /var/www/html/*
	cp -Rp /vagrant/html/* /var/www/html/
fi
