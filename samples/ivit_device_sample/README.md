# IVIT-I iDEVICE 
iVIT-I iDEVICE Sample, this sample demonstrates how to do use iDEVICE to monitor device on [iVIT](../../README.md).

# Usage
* Create instance for iDevice.
    ```bash
    #import iDevice from ivit
    from ivit_i.utils import iDevice 

    idev = iDevice()

    ```
* Another useful function.  
    1. Use `idev.get_available_device()` can get all uuid of device with list, and the format of return like below.  

    

        ```python
        ['0000:03:00.0']

        ```
    2. Use `idev.get_device_info()` can get all device information,and the format of return like below.
       If you have multi-device and you just want to check specific device.you can use `idev.get_device_info(uuid)`. (uuid you can get from
       `get_available_device()`.)

        ```python

        
        #Accelerator information.      
            '0000:03:00.0':{
                    'id': 2,                            # the idex wget from device.s
                    'uuid': '0000:03:00.0',             # the name get from device. 
                    'load': 0,                          # loading capacity get from device.
                    'memoryUtil': 0,                    # amount of memory usage get from device.
                    'temperature': 30.857142857142858   # temperature get from device
                  }
        


        ```
   

    