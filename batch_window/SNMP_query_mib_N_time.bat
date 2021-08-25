@echo off
set counter=0

@echo Enter cm ip address of a cable modem You want to query:
@set /p ip=ip:

@echo Enter number of queries (1 query = 1 second):
@set /p queries=queries:

:loop
@snmpget -L n -t 1 -P e -v 2c -c "private" %ip% 1.3.6.1.2.1.69.1.3.5.0
SET /A counter=%counter%+1
@ping 127.0.0.1 -n 1 > nul

if %counter% GTR %queries% (GOTO exit) else (GOTO loop)

:exit
pause
exit