#!/bin/bash
TOOL_DIR="/content/tools"
mkdir -p $TOOL_DIR
cd $TOOL_DIR


### 参考：GoogleDriveのファイルをwgetでダウンロードする方法
### https://qiita.com/cv_carnavi/items/1fc8272da135a36598a2
### https://qiita.com/IsHYuhi/items/e4afc0163019343d9664

## Flye-2.9.2 from GoogleDrive
FILE_ID="183cxJNMY8BiG2LGpvbOnv8fAcU6Piv0r";
FILE_NAME="Flye-2.9.2.tar.gz";
FILE_BASE=`basename -s ".tar.gz" $FILE_NAME`
gdown https://drive.google.com/uc?id=$FILE_ID --no-cookies -O $FILE_NAME
tar -zxf $FILE_NAME
rm -f $FILE_NAME
ln -sf $TOOL_DIR/$FILE_BASE/flye /usr/bin/

## SeqKit v2.5.1 from GoogleDrive
FILE_ID="1JTiW78S0K4H_ag42wy5ojPLWKSR7V3_E";
FILE_NAME="seqkit_linux_amd64.tar.gz";
FILE_BASE=`basename -s ".tar.gz" $FILE_NAME`
gdown https://drive.google.com/uc?id=$FILE_ID --no-cookies -O $FILE_NAME
tar -zxf $FILE_NAME
rm -f $FILE_NAME
ln -sf $TOOL_DIR/seqkit /usr/bin/

## pipelines
wget -q -O ../Flye_assemble.sh      https://github.com/CropEvol/lecture/raw/master/textbook_2024/scripts/Flye_assemble.sh

