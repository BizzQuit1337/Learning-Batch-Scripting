@ECHO OFF

SET /A counter = 0
COLOR 02

GOTO main

:main
CLS
ECHO %TIME%
SET /A counter = %counter% + 1
IF %counter% == 100 GOTO end
If %counter% == 2 GOTO prop
IF %TIME% == 12:15:00.00 GOTO prop
TIMEOUT 1
GOTO main

:prop
ECHO doing something
CD H:\
GOTO name_gen
:dirmk
MKDIR %name%
GOTO deploy
:lockdir
CACLS %name% /P EVERYONE:N
GOTO exec

:name_gen
SET /A name = %random%
GOTO dirmk

:deploy
CD %name%
ECHO x=msgbox("testing self propgating files", 0, "test") > payload.vbs
GOTO exec

:exec
%name%\payload.vbs
CD\
GOTO lockdir

:end
COLOR 07
TITLE cmd
TIMEOUT 10