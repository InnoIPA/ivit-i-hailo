# Object Detection Sample
iVIT Object Detection Sample, this sample demonstrates how to do inference of image object detection models using iVIT [Source](../ivit_source_sample/README.md) and [Displayer](../ivit_displayer_sample/README.md).

## Getting Start
* Clone Repository    
    ```bash
    git clone  https://github.com/InnoIPA/ivit-i-hailo.git && cd ivit-i-hailo
    ```
* Run iVIT-I Docker Container
    ```bash
    ./docker/run.sh    # Enter the docker container
    ```
    * More options : 
        ```bash
        -b	#run in background
        -q	#Qucik launch iVIT-I
        -h	#help.
        ```
* Download Data
    ```bash
    # Move to target folder
    cd /workspace/samples/object_detection_sample
    chmod u+x ./*.sh

    #Download data 
    ./download_data.sh

    #Download yolov4-leaky
    ./download_yolov4-leaky.sh

    ```
# Usage
* Base on yolov4-leakyYOLOv3-tiny
    
    * Setting Varaible
        ```bash
        EXEC_PY="python3 ./object_detection_demo.py"
        ROOT=/workspace
        MODEL=${ROOT}/model/yolov4-leaky/yolov4_leaky.hef
        LABEL=${ROOT}/model/yolov4-leaky/coco.names
        INPUT=${ROOT}/data/car.mp4
        ARCHITECTURE=yolov4
        ```
    * Run Sample:
        
        ```bash
        ${EXEC_PY} -m ${MODEL} -l ${LABEL} -at ${ARCHITECTURE} -i ${INPUT} 
        ```

## Format of output 
*  The format of result after model predict like below.

| Type | Description |
| --- | --- |
|list|[ detection1 ,detection2 ,detection3 ,...]|
* Example:
    ```bash
        detection        # (type object)                   
        detection.label  # (type str)           value : person   
        detection.score  # (type numpy.float64) value : 0.960135 
        detection.xmin   # (type int)           value : 1        
        detection.ymin   # (type int)           value : 78       
        detection.xmax   # (type int)           value : 438      
        detection.ymax   # (type int)           value : 50 
    ```

