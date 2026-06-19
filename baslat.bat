@echo off
title Istanbul Sokak Haritasi - Sunucu
echo =======================================
echo   Istanbul Sokak Genislik Haritasi
echo =======================================
echo.
echo Sunucu baslatiliyor...
echo.
REM Bilgisayarin yerel IP'sini bul
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| find "IPv4"') do set ip=%%a
set ip=%ip: =%
echo Telefonundan baglanmak icin: http://%ip%:8080
echo Bilgisayardan acmak icin: http://localhost:8080
echo.
echo Cikmak icin CTRL+C
echo.
http-server -p 8080 --cors
pause
