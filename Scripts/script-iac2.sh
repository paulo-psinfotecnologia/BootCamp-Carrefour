#!/bin/bash

echo "Atualizando o Servidor...!!!!!!"
apt update && apt upgrade -y

echo "Instalação do Apache...!!!!!!"
apt install apache2 -y && systemctl restart apache2 && systemctl enable apache2

echo " Instalação do unzip...!!!!!!"
apt install unzip -y

echo "Donwload e copia dos arquivos da aplicação...!!!!!!"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
