#!/bin/bash

echo "Creating system groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo “Groups created...”

echo "Creating system users..."

echo "Creating Adm users"

useradd carlos -c "Carlos Silva" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria Guimaraes" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "Joao Avelin" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_ADM
passwd joao -e

echo "Creating Sales users"

useradd debora -c "Debora Sinclair" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana Carvalho" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto Paes" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_VEN
passwd roberto -e

echo "Creating Security users"

useradd josefina -c "Josefina Brito" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda Rios" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio Correa" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_SEC
passwd rogerio -e

echo “Users created...”

echo "Creating directories"

mkdir /publico
chmod 777 /publico

mkdir /adm
chown root:GRP_ADM /adm
chmod 770 /adm

mkdir /ven
chown root:GRP_VEN /ven
chmod 770 /ven

mkdir /sec
chown root:GRP_SEC /sec
chmod 770 /sec

echo “Directories created...”

echo "Done!!"
