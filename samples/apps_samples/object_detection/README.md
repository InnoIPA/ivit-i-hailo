# IVIT-I Application of Object detection
iVIT Application Sample, this sample demonstrates how to do inference of IVIT-I Application of basic object detection. using iVIT-I platform.
* [Environment](#environment)
* [Getting Start](#getting-start)
## Environment

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
        -h	#help.
        ```
* Download Data
    ```bash
    # Move to target folder
    cd /workspace/samples/apps_samples/object_detection
    chmod u+x ./*.sh

    #Download data 
    ./download_data.sh

    #Download yolov4-leaky
    ./download_yolov4-leaky.sh

    ```


## Getting Start
We support 4 application about object detection as below.


1. [Basic Object Detection](./docs/Basic_Object_Detection.md)  
2. [Detection Zone](./docs/Detection_Zone.md)  
3. [Tracking Zone](./docs/Tracking_Zone.md)  
4. [Movement Zone](./docs/Movement_Zone.md)








