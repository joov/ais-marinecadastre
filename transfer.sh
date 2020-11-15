#!/bin/bash

bucket="aisdata-marinecadastre"

for f in data/2019/*.zip
do
    echo "$f"
    if [[ $f =~ AIS_([0-9]{4})_([0-9]{2})_([0-9]{2})\.zip ]]; then 
        aws s3api put-object --bucket $bucket --key "${BASH_REMATCH[1]}/${BASH_REMATCH[3]}/${BASH_REMATCH[3]}/"
        aws s3 cp $f "s3://$bucket/${BASH_REMATCH[1]}/${BASH_REMATCH[2]}/${BASH_REMATCH[3]}/AIS_${BASH_REMATCH[1]}_${BASH_REMATCH[2]}_${BASH_REMATCH[3]}.zip"
        echo "${BASH_REMATCH[1]}, ${BASH_REMATCH[2]}, ${BASH_REMATCH[3]}" 
    else 
        echo "oops" 
    fi
done