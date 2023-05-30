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
# Usage
* Base on yolov4-leaky

    * Download Data
        ```bash
        # Move to target folder
        cd /workspace/samples/object_detection_sample
        chmod u+x ./*.sh

        #Download data 
        ./download_data.sh

        #download yolov4-leaky
        ./download_yolov4-leaky.sh

        ``` 
    * Setting Varaible
        ```bash
        EXEC_PY="python3 ./object_detection_demo.py"
        ROOT=/workspace
        MODEL=${ROOT}/model/yolov4-leaky-512/yolov4-leaky-512.hef
        LABEL=${ROOT}/model/yolov4-leaky-512/coco.names
        INPUT=${ROOT}/data/car.mp4
        ARCHITECTURE=yolov4-leaky
        ANCHOR="12.0 16.0 19.0 36.0 40.0 28.0 36.0 75.0 76.0 55.0 72.0 164.0 142.0 110.0 192.0 243.0 459.0 401.0"
        ```
    * Run Sample:
        
        ```bash
        ${EXEC_PY} -m ${MODEL} -l ${LABEL} -at ${ARCHITECTURE} -i ${INPUT} --anchors ${ANCHOR}
        ```
* Base on yolov4-tiny
    * Download Data
        ```bash
        # Move to target folder
        cd /workspace/samples/object_detection_sample
        chmod u+x ./*.sh

        #Download data 
        ./download_data.sh

        #download yolov4-tiny
        ./download_yolov4-tiny.sh

        ``` 
    * Setting Varaible
        ```bash
        EXEC_PY="python3 ./object_detection_demo.py"
        ROOT=/workspace
        MODEL=${ROOT}/model/yolov4-tiny-608/yolov4-tiny-608.hef
        LABEL=${ROOT}/model/yolov4-tiny-608/coco.names
        INPUT=${ROOT}/data/car.mp4
        ARCHITECTURE=yolov4-tiny
        ANCHOR="10.0 14.0 23.0 27.0 37.0 58.0 81.0 82.0 135.0 169.0 344.0 319.0"
        ```
    * Run Sample:
        
        ```bash
        ${EXEC_PY} -m ${MODEL} -l ${LABEL} -at ${ARCHITECTURE} -i ${INPUT} --anchors ${ANCHOR}
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

