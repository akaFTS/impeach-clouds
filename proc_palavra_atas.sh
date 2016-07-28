#!/bin/bash
########################################
# ./proc_palavra_atas.sh democracia
########################################

palavra=$1
ATAS=$(ls atas)

while read ata; do
    grep $palavra atas/${ata} | cut -d"-" -f1 | cut -d"." -f2 | sed "s/Bloco\///g" | sed "s/(/- /g" 
done <<< "${ATAS}"
