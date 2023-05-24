![COVER](assets/images/iVIT-I-Logo-B.png)

# iVIT-I-Hailo
iVIT-I is an AI inference tool which could support multiple AI framework and this repository is just for Hailo platform.

* [Requirements](#requirements)
* [Getting Start](#getting-start)

# Requirements
* [Docker 20.10 + ](https://docs.docker.com/engine/install/ubuntu/)
* [Docker-Compose v2.15.1 ](https://docs.docker.com/compose/install/linux/#install-using-the-repository)
* you can check via `docker compose version`
* Install `hailort-pcie-driver v4.12.1` more infomation about how to install can see [here](./assets/README.md). 
    
# Getting Start
1. Clone Repository
    
    * Donwload Newest Version
        ```bash
        git clone  https://github.com/InnoIPA/ivit-i-hailo.git && cd ivit-i-hailo
        ```

2. Run iVIT-I Docker Container

    * Run CLI container
        ```bash
        sudo ./docker/run.sh

        "USAGE: ./docker/run.sh -h" << EOF
        Run the iVIT-I environment.

        Syntax: scriptTemplate [-bqh]
        options:
        b               run in background
        q               Qucik launch iVIT-I
        h               help.
        >>p.
        ```

3. Run Samples

    * [Source Sample](samples/classification_sample/README.md)
    * [Displayer Sample](samples/ivit_displayer_sample/README.md)
    * [Classification Sample](samples/classification_sample/README.md)
    * [Object Detection Sample](samples/object_detection_sample/README.md)
    * [iDevice Sample](samples/ivit_device_sample/README.md)

# Python Library Documentation

[iVIT-I-hailo API Docs](https://innoipa.github.io/ivit-i-hailo/)
