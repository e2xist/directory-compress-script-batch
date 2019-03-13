@ECHO OFF
MODE CON COLS=60 LINES=11
COLOR 3F

REM 7z 을 필요로 합니다.

ECHO ======================================
ECHO 폴더 압축 백업 배치 파일
ECHO Author : e2xist (e2xist.tistory.com)
ECHO ======================================


REM 압축할 경로를 지정해줍니다.
SET _MY_FOLDER=d:\test\abcd
REM 압축한 파일을 저장할 경로를 지정해줍니다.
SET _TO_FOLDER=d:\test
REM 압축파일명을 지정합니다. (이 파일 뒤로 날짜가 적히게 됩니다)
SET FNAME=filename123

REM 날짜시간 얻어오기
CALL :SETDATETIME
SET FNAME="%FNAME%.%_MY_DATETIME%.zip"

REM 7z 으로 압축
7z a %_TO_FOLDER%\%FNAME% %_MY_FOLDER%

ECHO 완료되었습니다.
TIMEOUT /t 10


REM close
GOTO :EOF

REM =============================
REM 함수 구현 부분
:SETDATETIME
REM 결과 : 2015-03-12
SET _MY_DATE=%DATE%
REM 결과 : 20150312
SET _MY_DATE=%_MY_DATE:-=%
REM 결과 : 1:40:03.01
SET _MY_TIME=%TIME%
REM 결과 : 01:40:03.01
SET _MY_TIME=%_MY_TIME: =0%
REM 결과 : 01:40:03
SET _MY_TIME=%_MY_TIME:~0,-3%
REM 결과 : 014003
SET _MY_TIME=%_MY_TIME::=%
REM 최종 결과 : 20150312_014003
SET _MY_DATETIME=%_MY_DATE%_%_MY_TIME%
REM =============================
