@ECHO OFF
::add variables here

SET /A c = 0
GOTO main

::add gotos here to avoid ugly code (these are essentially functions)

:dir_list
COLOR 2
ECHO user %USERNAME%.
DIR
SET /A c = 1
PAUSE
GOTO main

:ip_info
COLOR 5
ECHO user %USERNAME%.
IPCONFIG
PAUSE
GOTO end



::add calls to functions here (this is your main event)

:main
IF %c% == 0 GOTO dir_list
IF %c% == 1 GOTO ip_info

::this is the standard ending to properly close the file
:end
COLOR 7
CLS
timeout 5