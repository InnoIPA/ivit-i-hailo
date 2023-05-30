#!/bin/bash

function download(){
	ID=$1
	NAME=$2

	if [[ ! -z $(ls model 2>/dev/null )  ]];then
		echo "$(date +"%F %T") the model folder has already exist !"
	else
		gdown --id $ID -O $NAME
	fi
}

# ------------------------------------------------------------------------------

echo "$(date +"%F %T") Download model from google drive ..."


MODEL_PATH="/workspace/model/"
cd ${MODEL_PATH}
# ------------------------------------------------------------------------------

# Model: https://drive.google.com/file/d/1a6QmgSFz2HX9ZwBZIwhyCcl78YCTP2p7/view?usp=share_link
NAME="yolov4-tiny-608"
ZIP="${NAME}.zip"
TARGET_PATH="${MODEL_PATH}${NAME}"
if [[ -d ${NAME} ]];then
	echo "$(date +"%F %T") Model already exist"
	exit 1
fi

GID="1WirW_3aDdmMGBODHiBEelITvOS50G65w"
download $GID ${ZIP}
unzip $ZIP -d ${TARGET_PATH} && rm "${ZIP}"
