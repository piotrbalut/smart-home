#!/bin/bash

DATA_PATH=""
ADAFRUIT_PATH=""
DOMOTICZ_HOST_FILE_NAME=""

# DOMOTICZ SERVER
SERVER=$(<$DATA_PATH/$DOMOTICZ_HOST_FILE_NAME)

# DHT IDX
DHTIDX="1"
 
# DHTPIN
DHTPIN="4"

# DHT TYPE
DHT_TYPE="22"

sleep 5
 
sudo nice -20 python $ADAFRUIT_PATH $DHT_TYPE $DHTPIN > /var/tmp/temp.txt
#TEMP=$(cat /var/tmp/temp.txt | grep "Temp" | awk '{ print $3 }')
#TEMP=$(cat /var/tmp/temp.txt | grep "Temp")
 
TEMP=$(awk ' /Temp/ {print substr ($0,6,4)}' /var/tmp/temp.txt)
#HUM=$(awk ' /Hudmidity/ {print substr ($0,0)}' /var/tmp/temp.txt)
#HUM=$(awk ' /Humidity/ {print 1$}' /var/tmp/temp.txt)
HUM=$(awk ' /Humidity/ {print substr ($0,22,4)}' /var/tmp/temp.txt)
echo $TEMP
echo $HUM
 
# Send data
curl -s -i -H "Accept: application/json" "http://$SERVER/json.htm?type=command&c=getauth&param=udevice&idx=$DHTIDX&nvalue=0&svalue=$TEMP;$HUM;2"
 
 
TEMP=""
HUM=""