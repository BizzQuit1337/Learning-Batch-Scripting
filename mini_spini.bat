@ECHO OFF
::variables
SET /A time = 10
SET /A counter = 0


GOTO init

:init
TITLE spinning
ECHO how long would you like to watch
SET /P usr_time=
GOTO main

:main
CLS
COLOR %counter%
ECHO "\"
ECHO  "\"
TIMEOUT 1
CLS
ECHO  "|"
ECHO  "|"
TIMEOUT 1
CLS
ECHO  "/"
ECHO "/"
TIMEOUT 1
CLS
ECHO "  "
ECHO "--"
TIMEOUT 1
CLS
SET /A counter = %counter% + 1
IF %counter% == %usr_time% GOTO end
GOTO main

:end
COLOR 07
TITLE cmd
TIMEOUT %time%