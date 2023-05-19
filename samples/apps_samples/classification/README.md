# IVIT-I Application of basic classfication
iVIT Application Sample, this sample demonstrates how to do inference of IVIT-I Application of basic classification. using iVIT-I platform.

## Getting Start
* The function of basic classification can read [here](../../../apps/README.md).
* More information about how to use this application [here](../../../apps/docs/Basic_Classification.md).  
* Clone Repository    
    ```bash
    git clone  https://github.com/MaxChangInnodisk/ivit-i-hailo.git && cd ivit-i-hailo
    ```

* Run iVIT-I Docker Container
    ```bash
    ./docker/run.sh
    ```
    * More options : 
        ```bash
        -b	#run in background
        -q	#Qucik launch iVIT-I
        -h	#
* Download Data 
    ```bash
    # Move to target folder
    cd /workspace/samples/apps_samples/classification/
    
    # Download File (Do not use sudo.)
    chmod u+x ./*.sh
    ./download_data.sh        
    ./download_model.sh       
    ```
    

* Setting Varaible
    ```bash
    
    EXEC_PY="python3 ./Basic_Classification.py"

    ROOT=/workspace
    MODEL=${ROOT}/model/dog_cat_classification_50/dog_cat_classification.hef
    LABEL=${ROOT}/model/dog_cat_classification_50/classes.txt
    INPUT=${ROOT}/data/cat.jpg
    ```

* Run Sample
    ```bash
    ${EXEC_PY} -m ${MODEL} -l ${LABEL} -i ${INPUT}
    ```
* Help
    ```bash
    ${EXEC_PY} -h
    ```


