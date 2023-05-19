## Tracking Zone  
* The function of basic Tracking can read [here](../../../../apps/README.md).
* More information about how to use this application [here](../../../../apps/docs/Tracking_Zone.md).  
* Setting Varaible
    ```bash
    
    cd /workspace/samples/apps_samples/object_detection
    
    EXEC_PY="python3 ./Tracking_Zone.py"
    
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