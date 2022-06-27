@ECHO OFF

::Variables
COLOR 7
SET /A c = 0
SET /A time = 5

::Functions
GOTO main
:usr_in
ECHO Enter a command ip, check, acd, cwd, close
SET /P message=
GOTO next

:ip
COLOR 02
IPCONFIG
timeout %time%
GOTO end

:check
COLOR 05
DIR
ECHO Enter a file to check.
SET /P file_name=
ICACLS %file_name%
ECHO Would ou like to save results (y/n)?
SET /P result=
IF %result% == y GOTO save
GOTO end

:save
ECHO Enter a file name.
SET /P name_file=
ICACLS %file_name% > %name_file%
GOTO usr_in

:acd
ECHO Specify a new directory or enter back to go to previous directory
SET /P dir_path=
IF %dir_path% == back GOTO back
CD %dir_path%
GOTO cwd


:cwd
COLOR 03
ECHO current directory is
ECHO %CD%
PAUSE
GOTO usr_in

:back
CD ..
GOTO cwd

::Main event
:main
GOTO usr_in

:next
IF %message% == ip GOTO ip
IF %message% == check GOTO check
IF %message% == close GOTO end
IF %message% == acd GOTO acd
IF %message% == cwd GOTO cwd
:next2
ECHO you typed:
ECHO %message%
timeout %time%
GOTO next

::ending
:end
COLOR 7
CLS
TIMEOUT 10