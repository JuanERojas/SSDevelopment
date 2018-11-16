@echo off >nul
cls
for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate set MyDate=%%x
set today=%MyDate:~0,4%-%MyDate:~4,2%-%MyDate:~6,2%
SET HOUR=%time:~0,2%
SET dtStamp9=%today%-%time:~1,1%%time:~3,2%%time:~6,2% 
SET dtStamp24=%today%-%time:~0,2%%time:~3,2%%time:~6,2%
if "%HOUR:~0,1%" == " " (SET dtStamp=%dtStamp9%) else (SET dtStamp=%dtStamp24%)
echo -- Test de conectividad SS Servicios 0.7b --
c:
cd %TEMP% >nul
md %TEMP%\iperf3 2>nul
echo.
set /p client=Ingrese su nro. de cliente :
set /p down=Ingrese su velocidad de bajada en kbps (Ej. 8 megas serian 8000, 3.5 megas serian 3500) :
set /p up=Ingrese su velocidad de subida en kbps (Ej. 1 mega serian 1000, 3.5 megas serian 3500) :
echo.
echo Por favor, es necesario que solo el equipo que realiza el chequeo se conecte a la red. Desactive cualquier equipo que no participe del test. Presione cualquier tecla para continuar.
pause >nul
echo Asumiendo cliente nro. %client%
echo Asumiendo bajada de %down% kbps.
echo Asumiendo subida de %up% kbps.
echo.
del %TEMP%\iperf3\log*.txt 2>nul
del %TEMP%\iperf3\ftp.txt 2>nul
echo %date% %time% >>%TEMP%\iperf3\log.txt
echo Download %down% kbps. >>%TEMP%\iperf3\log.txt
echo Upload %up% kbps. >>%TEMP%\iperf3\log.txt
echo ----- >>%TEMP%\iperf3\log.txt
echo Bajando archivos necesarios ...
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://172.16.2.129/putty/psftp.exe', '%TEMP%\iperf3\psftp.exe')" >>%TEMP%\iperf3\log.txt
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://172.16.2.129/iperf3/cygwin1.dll', '%TEMP%\iperf3\cygwin1.dll')" >>%TEMP%\iperf3\log.txt
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://172.16.2.129/iperf3/cyggcc_s-1.dll', '%TEMP%\iperf3\cyggcc_s-1.dll')" >>%TEMP%\iperf3\log.txt
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://172.16.2.129/iperf3/iperf3.exe', '%TEMP%\iperf3\iperf3.exe')" >>%TEMP%\iperf3\log.txt

echo Verificando bajada TCP ...
%TEMP%\iperf3\iperf3 -c 172.16.2.245 -R -P 4 >> %TEMP%\iperf3\log.txt
echo Verificando subida TCP ...
%TEMP%\iperf3\iperf3 -c 172.16.2.245 -P 4 >> %TEMP%\iperf3\log.txt
echo Verificando bajada UDP a %down% kbps ...
%TEMP%\iperf3\iperf3 -c 172.16.2.245 -R -u -b %down%k >> %TEMP%\iperf3\log.txt
echo Verificando subida UDP a %up% kbps ...
%TEMP%\iperf3\iperf3 -c 172.16.2.245 -u -b %up%k >> %TEMP%\iperf3\log.txt
echo Traceroute interno ...
tracert 10.20.22.1 >>%TEMP%\iperf3\log.txt
echo Traceroute externo ...
tracert -d 8.8.8.8 >>%TEMP%\iperf3\log.txt
echo Subiendo resultados ...
ren %TEMP%\iperf3\log.txt log%client%-%dtStamp%.txt
echo put log%client%-%dtStamp%.txt >>%TEMP%\iperf3\ftp.txt
echo bye >>%TEMP%\iperf3\ftp.txt
cd %TEMP%\iperf3
echo y| psftp tests@172.16.2.129 -pw test1234 -b %TEMP%\iperf3\ftp.txt >nul
echo.
echo Finalizado.
echo.
echo Presione cualquier tecla para cerrar la ventana...
pause >nul
exit
