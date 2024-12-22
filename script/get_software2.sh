#!/bin/bash
TOOL_DIR="/content/tools"
mkdir -p $TOOL_DIR
cd $TOOL_DIR


### 参考：GoogleDriveのファイルをwgetでダウンロードする方法
### https://qiita.com/cv_carnavi/items/1fc8272da135a36598a2
### https://qiita.com/IsHYuhi/items/e4afc0163019343d9664

## SeqKit v2.5.1 from GoogleDrive
FILE_ID="1JTiW78S0K4H_ag42wy5ojPLWKSR7V3_E";
FILE_NAME="seqkit_linux_amd64.tar.gz";
FILE_BASE=`basename -s ".tar.gz" $FILE_NAME`
gdown https://drive.google.com/uc?id=$FILE_ID --no-cookies -O $FILE_NAME
tar -zxf $FILE_NAME
rm -f $FILE_NAME
ln -sf $TOOL_DIR/seqkit /usr/bin/

## install blast
apt install ncbi-blast+ > /dev/null 2>&1

## install gffread
apt install gffread > /dev/null 2>&1

cd ..
## download list.txt
wget -q https://github.com/slt666666/NLR_biology_workshop_2024/raw/master/data/list.txt

## download avrpik fasra
wget -q https://github.com/slt666666/NLR_biology_workshop_2024/raw/master/data/AVR_Pik_CDS.fasta
wget -q https://github.com/slt666666/NLR_biology_workshop_2024/raw/master/data/AVR_Pik_protein.fasta

## get sample fastq
wget -q -O sample.fastq.gz https://github.com/slt666666/NLR_biology_workshop_2024/raw/master/data/bctg.part_001.fastq.gz
