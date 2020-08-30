import os
import time
import sys
import paho.mqtt.client as mqtt
import json
import random

THINGSBOARD_HOST = '64.227.46.82'
ACCESS_TOKEN = 'DHT11_DEMO_TOKEN'

# Data capture and upload interval in seconds. Less interval will eventually hang the DHT22.
INTERVAL=2

sensor_data = {'temperature': 10, 'humidity': 20}

next_reading = time.time() 

client = mqtt.Client()

# Set access token
client.username_pw_set(ACCESS_TOKEN)

# Connect to ThingsBoard using default MQTT port and 60 seconds keepalive interval
client.connect(THINGSBOARD_HOST, 1883, 60)

client.loop_start()

try:
    while True:
        humidity,temperature = [random.randint(1,10), random.randint(20,30)]
        humidity = round(humidity, 2)
        temperature = round(temperature, 2)
        print(u"Temperature: {:g}\u00b0C, Humidity: {:g}%".format(temperature, humidity))
        sensor_data['temperature'] = temperature
        sensor_data['humidity'] = humidity

        # Sending humidity and temperature data to ThingsBoard
        client.publish('v1/devices/me/telemetry', json.dumps(sensor_data), 1)

        next_reading += INTERVAL
        sleep_time = next_reading-time.time()
        if sleep_time > 0:
            time.sleep(sleep_time)
except KeyboardInterrupt:
    pass

client.loop_stop()
client.disconnect()

