# Smart Home

Here's my Smart Home scripts and [Home Assistant](https://home-assistant.io/) configuration.  
Version: **1.0.2** ([Releases](https://github.com/piotrbalut/smart-home/releases))

## Home Assistant Configuration
![Home Assistant logo](https://raw.githubusercontent.com/home-assistant/home-assistant-assets/master/loading-screen.gif)

Version: **0.89.2**

**Hardware:**  

- Raspberry Pi 2 model B V1.2
- Sonoff Basic
- Xiaomi Gateway 2
- Xiaomi Aqara Temperature Humidity Sensor
- Xiaomi Aqara Window Door Sensor
- Xiaomi Aqara Smart Wireless Switch
- Xiaomi Aqara Smart Water Sensor
- Xiaomi Aqara Cube Smart Home Controller
- Xiaomi Smart Door and Windows Sensor

**Automations:**  
*Automations connected with hardware devices contains ref files to all automations which uses device* 
- [zones](./home-assistant/config/automation/zones) - enter, leave zones
- [alarm](./home-assistant/config/automation/alarm) - arm alarm, trigger alarm
- [air_quality](./home-assistant/config/automation/air_quality) - send information about air quality
- [weather](./home-assistant/config/automation/weather) - send information weather
- [parts_of_a_day](./home-assistant/config/automation/parts_of_a_day) - for example, play music
- [xiaomi_cube](./home-assistant/config/automation/xiaomi_cube) - Volumio: turn on, turn off, volume up, volume down
- [xiaomi_door_window_sensor](./home-assistant/config/automation/xiaomi_door_window_sensor) - alarm and air quality notifications
- [xiaomi_water_leak_sensor](./home-assistant/config/automation/xiaomi_water_leak_sensor) - alarm notifications
- [xiaomi_wireless_button](./home-assistant/config/automation/xiaomi_wireless_button) - turn off lights, 

**Notifications:**  
- [Pushover](https://pushover.net/)    

**Device trackers:**  
- Nmap  

**Media players:**  
- [Volumio](https://github.com/volumio) 
- Samsung Smart TV

**Services:**  
- [DarkSky](https://darksky.net)  
- [Airly](https://airly.eu)

**Text-to-Speech:**  
- Google

## Other
### Volumio
**Hardware:**  
- Raspberry Pi Zero W
- Creative muvo 1c  

**Software:**  
- [Volumio](https://github.com/volumio)

### Air quality
**Hardware:**  
- Raspberry Pi Zero W
- Nova Fitness SDS011 

**Scripts:**  
- [sds011.py](./external-scripts/air-quality/sds011.py) - reads PM 10 and PM 2.5 from Air Quality Sensor. Measurements are sending to to Home Assistant.
---
*Due to security reason, some automations and devices are hidden*
