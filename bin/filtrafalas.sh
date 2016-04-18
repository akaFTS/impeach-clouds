#!/bin/bash

#Remover todos os newlines, exceto ao trocar de personagem
FALAS=$(cat $1 | tr '\n' ' ' | sed 's/O SR./\'$'\nO SR./g' | sed 's/A SRA./\'$'\nA SRA./g')

#Remover falas dos capangas do Cunha
FALAS=$(echo "${FALAS}" | grep -Ev "PRESIDENTE|BETO MANSUR|FELIPE BORNIER|ALEX CANZIANI")

#Remover partido e estado, e tambem o "O SR." antes do nome
FALAS=$(echo "${FALAS}" | sed -e 's/([^()]*)//g' | sed -e 's/O SR.//g' | awk '$1=$1')

#Remover nome do deputado - comentar para debug
FALAS=$(echo "${FALAS}" | sed -e 's/ - /:/g' | sed -e 's/.*://g')

echo "${FALAS}"
