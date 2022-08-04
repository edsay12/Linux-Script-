#!/bin/bash

echo 'Iniciando Script'
echo 'Criando Diretorios'

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo  'Setando permisoes nas pastas'

chmod  777 /publico
chmod  770 /adm
chmod  770 /ven
chmod  770 /sec

echo 'Criando grupos'

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo 'definindo dono das pastas e grupos'


chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /publico
chown root:GRP_SEC /publico

echo 'Criando usuarios'

useradd carlos -m -c 'DAVI' -s/bin/bash -G GRP_ADM
useradd maria -m -c 'DAVI' -s/bin/bash -G GRP_ADM
useradd joao -m -c 'DAVI' -s/bin/bash -G GRP_ADM

useradd debora -m -c 'DAVI' -s/bin/bash -G GRP_VEN
useradd sebastiana -m -c 'DAVI' -s/bin/bash -G GRP_VEN
useradd roberto -m -c 'DAVI' -s/bin/bash -G GRP_VEN

useradd josefina -m -c 'DAVI' -s/bin/bash -G GRP_SEC
useradd amanda -m -c 'DAVI' -s/bin/bash -G GRP_SEC
useradd rogerio -m -c 'DAVI' -s/bin/bash -G GRP_SEC


echo 'Fim de jogo haha'