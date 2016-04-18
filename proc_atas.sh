#!/bin/bash

ATAS=$(ls atas)

while read ata; do
    ./bin/filtrafalas.sh atas/${ata}
done <<< "${ATAS}"