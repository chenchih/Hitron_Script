@echo off

cd C:\Program Files (x86)\DOCSIS Configurator
set /P bin="Enter bin file name: "
set /p text="Enter text file name: "

:start
cls
echo ==============================
echo 1)transfer bin to text
echo 2)transfer text to bin
echo 3)read bin file
echo 4)exit
echo ==============================
set /p choice="Please eneter choice: "

if '%choice%'=='1' goto textconvert
if '%choice%'=='2' goto binconvert
if '%choice%'=='3' goto readfile
if '%choice%'=='4' goto end

:textconvert
docsis.exe -d %bin% > %text%
pause
goto start

:binconvert
set /P newbin="Enter new bin file name: "
docsis.exe -p %text% %newbin%
pause
goto start

:readfile
docsis.exe -d %bin%
pause
goto start

:end
pause
exit