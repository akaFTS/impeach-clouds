#!/bin/bash

#Remover falas dos capangas do Cunha
FALAS=$(cat $1 | grep -Ev "PRESIDENTE|BETO MANSUR|FELIPE BORNIER|ALEX CANZIANI")

#Remover partido e estado, e tambem o "O SR." antes do nome
FALAS=$(echo "${FALAS}" | sed -e 's/([^()]*)//g' | sed -e 's/O SR.//g' | awk '$1=$1')

#Remover nome do deputado - comentar para debug
FALAS=$(echo "${FALAS}" | sed -e 's/ - /:/g' | sed -e 's/.*://g')

echo "${FALAS}"
