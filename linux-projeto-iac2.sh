#!/bin/bash

echo "Criando pastas"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Pastas criadas!"

echo "Criando grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "grupos criados"

echo "criando usuários"
useradd carlos -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM
useradd maria -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM
useradd joao -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM

useradd debora -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_VEN
useradd sebastiana -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_VEN
useradd roberto -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_VEN

useradd josefina -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_SEC
useradd amanda -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_SEC
useradd rogerio -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_SEC
echo "Usuários criados"

echo "Ajustando permissões dos diretórios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Terminei"