@ECHO OFF

::Variables
SET /A c = 0

::Functions
GOTO main
:mk_dir
COLOR 02
SET /A c = %c% + 1
MKDIR %c%_Test
IF %c% == 2 GOTO end
GOTO main




::Main event
:main
GOTO mk_dir

::ending
:end
COLOR 7
CLS
TIMEOUT 10