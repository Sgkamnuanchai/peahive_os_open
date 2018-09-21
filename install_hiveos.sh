#!/bin/sh
#Author: PEA HiVE Team

#Download the package lists from the repositories and update them
#sudo apt-get update


cd ~/workspace/peahive_os_open/hive_lib
sudo git clone --recursive https://github.com/Azure/azure-iot-sdk-python.git
#install cmake for IoT hub
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:george-edison55/cmake-3.x
sudo apt-get update
sudo apt-get install cmake
#install gcc IoT hub
sudo apt-get install gcc-4.9
cd ~/workspace/peahive_os_open/hive_lib/azure-iot-sdk-python/build_all/linux
sudo ./setup.sh
sudo ./build.sh
cd ~/workspace/peahive_os_open/hive_lib/
sudo chmod 777 -R azure-iot-sdk-python/
cd ~/workspace/peahive_os_open/hive_lib/azure-iot-sdk-python/device/samples
sudo rm -rf iothub_client_sample.py



sudo cp ~/workspace/peahive_os_open/hive_lib/iothub_client_sample.py ~/workspace/peahive_os_open/hive_lib/azure-iot-sdk-python/device/samples
sudo cp ~/workspace/peahive_os_open/__init__.py ~/workspace/peahive_os_open/hive_lib/azure-iot-sdk-python/
sudo cp ~/workspace/peahive_os_open/__init__.py ~/workspace/peahive_os_open/hive_lib/azure-iot-sdk-python/device/
sudo cp ~/workspace/peahive_os_open/__init__.py ~/workspace/peahive_os_open/hive_lib/azure-iot-sdk-python/device/samples
##Finish install IoT hub



