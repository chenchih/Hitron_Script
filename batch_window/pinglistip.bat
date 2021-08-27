@ECHO OFF
setlocal EnableDelayedExpansion

for /F %%a in (ip.txt) do (
    ECHO.
    ECHO PINGING %%a, please wait....
    PING -n 2 %%a|find "TTL=" >NUL
    IF !ERRORLEVEL! neq 0 (ECHO       UNREACHABLE, %%a is UNREACHABLE
       ) ELSE (ECHO  %%a has pinged successfully )
)

pause