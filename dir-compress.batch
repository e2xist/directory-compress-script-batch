@ECHO OFF
MODE CON COLS=60 LINES=11
COLOR 3F

REM It requires the 7z(or bandizip)

ECHO ======================================
ECHO Folder Compression Process
ECHO Author : e2xist
ECHO ======================================


REM From folder path
SET _MY_FOLDER=d:\test\abcd
REM to folder path
SET _TO_FOLDER=d:\test
REM compress file name 
SET FNAME=filename123

REM get _MY_DATETIME
CALL :SETDATETIME
SET FNAME="%FNAME%.%_MY_DATETIME%.zip"

REM 7z compress
7z a %_TO_FOLDER%\%FNAME% %_MY_FOLDER%

ECHO The proccess has been completed.
TIMEOUT /t 10


REM close
GOTO :EOF

REM =============================
REM functional
:SETDATETIME
SET _MY_DATE=%DATE%
REM  result ->2015-03-12
SET _MY_DATE=%_MY_DATE:-=%
REM  result ->20150312
SET _MY_TIME=%TIME%
REM  result -> 1:40:03.01
SET _MY_TIME=%_MY_TIME: =0%
REM  result ->  01:40:03.01
SET _MY_TIME=%_MY_TIME:~0,-3%
REM  result ->  01:40:03
SET _MY_TIME=%_MY_TIME::=%
REM  result ->  014003
SET _MY_DATETIME=%_MY_DATE%_%_MY_TIME%
REM =============================
