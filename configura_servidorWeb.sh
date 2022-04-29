#!/bin/bash
apt-get update
apt-get install apache2
apt install wget
wget  https://gist.github.com/nunomazer/873219/archive/690e1f604dc8ead2583589e1aee6f8a42040a035.zip
apt-get install unzip
apt-get install zip
unzip 690e1f604dc8ead2583589e1aee6f8a42040a035.zip 
cp -r /root/873219-690e1f604dc8ead2583589e1aee6f8a42040a035/cv-resumido.html /var/www/html/
cp -r /root/873219-690e1f604dc8ead2583589e1aee6f8a42040a035/style.css /var/www/html/
rm -r /var/www/html/index.html
cd /var/www/html/
mv cv-resumido.html index.html
/etc/init.d/apache2 start
