# -*- coding: utf-8 -*-
from __future__ import absolute_import
from datetime import datetime
import importlib
import time
while True:
  iotmodul = importlib.import_module("hive_lib.azure-iot-sdk-python.device.samples.iothub_client_sample")
  x = {}
  x["device_id"] = 1
  x["date_time"] = datetime.now().replace(microsecond=0).isoformat()
  x["temp"] = 24.2
  x["unixtime"] = int(time.time())
  x["device_type"] = "raspi"
  time.sleep(5)
  print x
  discovered_address = iotmodul.iothub_client_sample_run(bytearray(str(x), 'utf8'))
  print('--------------update azure--------------')
