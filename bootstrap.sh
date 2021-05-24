#!/bin/bash
apt update && apt upgrade
apt -y install apache2 git
cd /etc/apache2/sites-available/
curl -O https://raw.githubusercontent.com/oykot/bao/main/000-default.conf
systemctl restart apache2
cd /var/www/html/
rm -Rf /var/www/html/bao/
git clone https://github.com/oykot/bao.git
