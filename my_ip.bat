@ECHO OFF

::Variables


::Functions
GOTO main

:ip_info
COLOR 02
ECHO User %USERNAME%.
IPCONFIG
PAUSE
CLS
GOTO end

:directory_check
ECHO your current directory is %cd%
timeout 2
SET /A cwd = %cd%
IF %cd% == H:\ GOTO main2
ECHO incorrect directory!
timeout 5
GOTO end

::Main event
:main
GOTO directory_check
:main2
GOTO ip_info

::ending
:end
COLOR 7
CLS
TIMEOUT 10