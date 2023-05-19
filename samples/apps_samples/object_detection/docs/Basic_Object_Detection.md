## Basic object detection  
* The function of basic object detection can read [here](../../../../apps/README.md).
* More information about how to use this application [here](../../../../apps/docs/Basic_Object_Detection.md).  
* Setting Varaible
    ```bash
    cd /workspace/samples/apps_samples/object_detection

    EXEC_PY="python3 ./Basic_Object_Detection.py"

    ROOT=/workspace
    MODEL=${ROOT}/model/yolov4-leaky/yolov4_leaky.hef
    LABEL=${ROOT}/model/yolov4-leaky/coco.names
    INPUT=${ROOT}/data/car.mp4
    ARCHITECTURE=yolov4
    ```

* Run Sample
    ```bash
    ${EXEC_PY} -m ${MODEL} -l ${LABEL} -at ${ARCHITECTURE} -i ${INPUT} 
    ```
* Help
    ```bash
    ${EXEC_PY} -h
    ```