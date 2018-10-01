# -*- coding: utf-8 -*-
from __future__ import absolute_import
from datetime import datetime
import importlib
import time
import sys
import Adafruit_DHT
sensor = Adafruit_DHT.DHT11
pin = 7
while True:
  humidity, temperature = Adafruit_DHT.read_retry(11 , 7)
  iotmodul = importlib.import_module("hive_lib.azure-iot-sdk-python.device.samples.iothub_client_sample")
  x = {}
  x["date_time"] = datetime.now().replace(microsecond=0).isoformat()
  if humidity is not None and temperature is not None:
	x["Temp"] = temperature
	x["Humidity"] = humidity
  x["unixtime"] = int(time.time())
  x["device_type"] = "raspi"
  time.sleep(5)
  print x
  discovered_address = iotmodul.iothub_client_sample_run(bytearray(str(x), 'utf8'))
  print('--------------update azure--------------')
