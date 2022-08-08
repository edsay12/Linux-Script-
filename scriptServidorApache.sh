#!/bin/bash

echo 'Atualizando o linux'
sudo apt-get update -y
sudo apt-get upgrade -y

echo 'Instalando dependencias'

sudo apt-get install apache2 -y
sudo apt-get install unzip -y

cd /tmp

echo 'baixando o projeto'

sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main
echo 'copiando arquivos para o apache'

cp -R  * /var/www/html/
