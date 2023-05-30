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

# Model: https://drive.google.com/file/d/1QDZomBNPjb7XbeWyVc6ATtnzuJ5LaUCa/view?usp=sharing
NAME="yolov4-leaky-512"
ZIP="${NAME}.zip"
TARGET_PATH="${MODEL_PATH}${NAME}"
if [[ -d ${NAME} ]];then
	echo "$(date +"%F %T") Model already exist"
	exit 1
fi

GID="1ntUQp9pfgKOZP_2o67Mjx8VsgNgY1Nmv"

download $GID ${ZIP}
chmod a+w $NAME
unzip $ZIP -d ${TARGET_PATH} && rm "${ZIP}"
