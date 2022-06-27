@ECHO OFF

SET /A 	a = 5 
SET /B  b = 10
SET /C  c = a + b

if c == 15 ECHO C IS 15
if c == 10 ECHO C IS NOT 15

COLOR 7
timeout 5
