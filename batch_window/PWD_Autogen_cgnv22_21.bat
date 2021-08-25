@echo off
set /p mac="Enter MAC: "
for %%i in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do call set mac=%%mac:%%i=%%i%%

echo Password: #%mac:~2,2%%mac:~0,2%%mac:~6,2%@%mac:~4,2%%mac:~10,2%%mac:~8,2%*
pause