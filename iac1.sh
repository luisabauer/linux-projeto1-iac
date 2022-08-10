#!/bin/bash

echo "Diretorios"

mkdir /d/workspace/publico
mkdir /d/workspace/adm
mkdir /d/workspace/ven
mkdir /d/workspace/sec

echo "Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "usuarios"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_SEC

echo "usuarios - grupos"
#pode usar usermod

echo "permissoes de diretorios"

chown root:GRP_ADM /d/workspace/adm
chown root:GRP_VEN /d/workspace/ven
chown root:GRP_SEC /d/workspace/sec

chmod 770 /d/wordspace/adm
chmod 770 /d/workspace/ven
chmod 770 /d/workspace/sec
chmod 777 /d/workspace/publico

