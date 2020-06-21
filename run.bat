@echo off
:main
cls
echo 메모리 사용량을 설정해 주세요.
echo.
echo.          ┌──────────
echo.          │
echo.          ├ 1 : 4GB 
echo.          │
echo.          ├ 2 : 2GB
echo.          │
echo.          ├ 3 : 프로그램 종료
echo.          │
echo.          └──────────
echo.
echo.

set /p selection=메뉴를 선택해 주세요 :

if %selection% leq 0 goto exception
if %selection%==1 goto 1g
if %selection%==2 goto 2g
if %selection%==3 goto exit
if %selection% geq 4 goto exception

:1g
java -Xmx4096M -Xms4096M -jar forge.jar -Dfml.queryResult=cancel nogui
pause
goto main
:2g
java -Xmx2048M -Xms2048M -jar forge.jar nogui
pause
goto main

:exception
echo 오류! 올바른 값을 입력해주세요
pause
goto main

:exit
echo 프로그램 종료
pause