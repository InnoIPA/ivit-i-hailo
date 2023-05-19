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

# Model: https://drive.google.com/file/d/1QDZomBNPjb7XbeWyVc6ATtnzuJ5LaUCa/view?usp=sharing
NAME="yolov4-leaky"
ZIP="${NAME}.zip"
if [[ -d ${NAME} ]];then
	echo "$(date +"%F %T") Model already exist"
	exit 1
fi

GID="1QDZomBNPjb7XbeWyVc6ATtnzuJ5LaUCa"
download $GID ${ZIP}
chmod a+w $NAME
unzip $ZIP && rm "${ZIP}"
