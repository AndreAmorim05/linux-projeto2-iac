#!/bin/bash

echo "Instalando as dependências..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizado! Para executar o arquivo atribua permissão de execução a ele com o seguinte comando:"
echo "> chmod +x script-iac.sh"
echo "Agora o execute com o seguinte comando:"
echo "./script-iac.sh"
