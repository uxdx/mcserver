@echo off
:main
cls
echo �޸� ��뷮�� ������ �ּ���.
echo.
echo.          ����������������������
echo.          ��
echo.          �� 1 : 4GB 
echo.          ��
echo.          �� 2 : 2GB
echo.          ��
echo.          �� 3 : ���α׷� ����
echo.          ��
echo.          ����������������������
echo.
echo.

set /p selection=�޴��� ������ �ּ��� :

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
echo ����! �ùٸ� ���� �Է����ּ���
pause
goto main

:exit
echo ���α׷� ����
pause