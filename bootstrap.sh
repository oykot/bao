#!/bin/bash
apt -y install apache2 git stress-ng
cd /etc/apache2/sites-available/
curl -O https://raw.githubusercontent.com/oykot/bao/main/000-default.conf
systemctl restart apache2
cd /var/www/html/
mkdir /var/www/html/bao/
git clone https://github.com/oykot/bao.git
cat <<EOF > /var/www/html/bao/index.html
<html><body><h1>$HOSTNAME</h1></body></html>
<html><body><h1>v2 de mon app</h1></body></html>
<img src="https://storage.googleapis.com/storedata-load-balance-web-flow/logo_SdV.png">
EOF
apt -y update
apt -y upgrade
