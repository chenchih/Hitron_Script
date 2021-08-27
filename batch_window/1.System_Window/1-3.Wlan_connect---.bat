:START
netsh wlan disconnect
sleep 15s
netsh wlan connect name=WIFI-IOT
sleep 15s
ping 8.8.8.8 -n 20 -l 520
GOTO START
