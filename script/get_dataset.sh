#!/bin/bash
DOWNLOAD_DIR="/content"
mkdir -p $DOWNLOAD_DIR
cd $DOWNLOAD_DIR

NAME="bctg"

for i in $(seq -f "%03g" 1 10);do
  wget -q https://github.com/slt666666/NLR_biology_workshop_2024/raw/master/data/${NAME}.part_${i}.fastq.gz
done

gunzip ${NAME}.part_001.fastq.gz

cat ${NAME}.part_*.fastq.gz > ${NAME}.fastq.gz

for i in $(seq -f "%03g" 1 10);do
  rm ${NAME}.part_${i}.fastq.gz
done
