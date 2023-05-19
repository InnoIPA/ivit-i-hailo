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
    1. Use idev.get_all_device() can get all device information, and the format of return like below.  

    

        ```bash
        
        {   
            #Accelerator information.      
            '0000:02:00.0':{
                        'id': 0,                            # the idex wget from device.s
                        'uuid': '0000:02:00.0',                      # the name get from device. 
                        'load': None,                          # loading capacity get from device.
                        'memoryUtil': None,                    # amount of memory usage get from device.
                        'temperature': 46.57341194152832   # temperature get from device
                    }
        }


        ```
    2. Use idev.get_device_info('0000:02:00.0') can get target device information,and the format of return like below.

        ```bash

        
        {
            'id': 0,                            # the idex wget from device.
            'uuid': '0000:02:00.0',                      # the name get from device. 
            'load': None,                          # loading capacity get from device.
            'memoryUtil': None,                    # amount of memory usage get from device.
            'temperature': 46.57341194152832   # temperature get from device
        }


        ```
    3. Use idev.get_device_id('0000:02:00.0') can get device index,and the format of return like below.

        ```bash

        (True, 0)   # True means we get currect idex.
                    # 0 means device idex.

        ```

    