#!/bin/bash

ATAS=$(ls atas)

while read ata; do
    ./bin/filtrafalas.sh atas/${ata} >> output/out_atas.txt
done <<< "${ATAS}"