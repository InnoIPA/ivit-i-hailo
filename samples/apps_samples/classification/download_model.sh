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
ROOT=$(dirname `realpath ${0}`)
echo $ROOT
cd $ROOT

TRG_FOLDER="/workspace/model"
if [[ ! -d ${TRG_FOLDER} ]];then
	mkdir ${TRG_FOLDER}
fi

if [[ ! (${TRG_FOLDER} == *"${ROOT}"*) ]];then
	echo "$(date +"%F %T") Move terminal to $(realpath ${TRG_FOLDER})"
	cd ${TRG_FOLDER}
fi

# ------------------------------------------------------------------------------

# Model: https://drive.google.com/file/d/1ylMHWd1KN6Ydhxryxrc-ZyPALf5rmI9F/view?usp=share_link
NAME="dog_cat_classification_50"
ZIP="${NAME}.zip"
if [[ -d ${NAME} ]];then
	echo "$(date +"%F %T") Model already exist"
	exit 1
fi

GID="1ylMHWd1KN6Ydhxryxrc-ZyPALf5rmI9F"
download $GID ${ZIP}
unzip $ZIP && rm "${ZIP}"
