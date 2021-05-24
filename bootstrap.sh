#!/bin/bash
apt update && apt upgrade
apt -y install apache2 git
cd /var/www/html/
git clone https://github.com/oykot/bao.git
