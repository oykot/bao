apt update
apt upgrade
apt -y install apache2
cat <<EOF > /var/www/html/index.html
<html><body><h1>$HOSTNAME</h1></body></html>
EOF
