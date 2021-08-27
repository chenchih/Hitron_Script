@echo off

#cd C:\Program Files (x86)\DOCSIS Configurator
#set /P bin="Enter bin/cfg file name: "
#set /p text="Enter text file name: "

:start
cls
echo ==============================
echo 1)DHCP
echo 2)static (100 dmain)
echo 3)static(121.40 domain(Line B))
echo 4)static(0.2 domain)
echo 5)static(172.56.0.X domain for PI used)
echo 6)static(10.15.198.4 domain for VMB_LineB_Routersubnet used)
echo =======USB===============
echo 7)USB_DHCP
echo 8)USB_STatic(100 domain)
echo 9)exit
echo ==============================
set /p choice="Please eneter choice: "

if '%choice%'=='1' goto dhcp
if '%choice%'=='2' goto static
if '%choice%'=='3' goto static1
if '%choice%'=='4' goto static2
if '%choice%'=='5' goto static3
if '%choice%'=='6' goto VMB
if '%choice%'=='7' goto dhcp_usb
if '%choice%'=='8' goto usb_static1
if '%choice%'=='9' goto end
:static
netsh interface ip set address name="wan" static 192.168.100.12 255.255.255.0
pause
goto start

:usb_static1
netsh interface ip set address name="區域連線 6" static 192.168.100.40 255.255.255.0  
pause
goto start

:dhcp_usb
netsh interface ip set address "區域連線 6" dhcp
pause
goto start


:static1
netsh interface ip set address name="wan" static 192.168.121.40 255.255.255.0 192.168.121.254 
pause
goto start

:static2
netsh interface ip set address name="wan" static 192.168.0.2 255.255.255.0
pause
goto start

:static3
netsh interface ip set address name="wan" static 172.56.0.90 255.255.255.0
pause
goto start

:VMB
netsh interface ip set address name="wan" static 10.15.198.4 255.255.255.248 10.15.198.1
pause
goto start


:dhcp
netsh interface ip set address "wan" dhcp
pause
goto start

:end
pause
exit