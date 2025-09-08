@echo off
:intro
title 136
echo This program opens a lot of programs and is intended to crash your computer.
echo Use at your own risk. I am not responsible for any damage caused by this script.
echo.
echo Are you sure you want to continue? (Y/N)
set /p choice=Select: 
if /I "%choice%"=="Y" goto menu
if /I "%choice%"=="N" exit
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
echo Enter 1 to start
echo Enter 2 to go to the about page
echo Enter 3 to exit
set /p choice=Select:  

if "%choice%"=="1" goto part1
if "%choice%"=="2" goto part2
if "%choice%"=="3" goto part3

echo Invalid choice. Please try again.
goto Invalid
:part2
cls
echo Written completely in batch by aesth
echo I am not responsible for any damage caused by this script.
echo Use at your own risk.
echo.
set /p part2 return=Press enter to return to the menu. 
goto menu

:part3
exit

:end
pause

:part1
echo You have 5 seconds to close this window before the program starts.
timeout /t 5 /nobreak >nul
for /l %%i in (1,1,2) do (
    start "" "C:\Windows\System32\cmd.exe"
    start "" "C:\Windows\System32\notepad.exe"  
    start "" "C:\Windows\System32\mspaint.exe"
    start "" "C:\Windows\System32\calc.exe"
    start "" "C:\Windows\System32\write.exe"
    start "" "C:\Windows\System32\explorer.exe"
    start "" "C:\Windows\System32\magnify.exe"
    start "" "C:\Windows\System32\osk.exe"
    start "" "C:\Windows\System32\charmap.exe"
)
goto ex2
:ex2
echo web pages
    start "" "https://duckduckgo.com/?t=ffab&q=33.5x2&ia=calculator"
    start "" "https://www.tiktok.com/@blizziboi/video/7087238410930326826"
    start "" "https://www.tiktok.com/@blizziboi/video/7533430787178302733"
    start "" "https://www.tiktok.com/"
    start "" "https://www.youtube.com/watch?v=kvwKxIxRUog"
    start "" "https://88x31.nl/"
    start "" "https://duckduckgo.com/?t=ffab&q=why+is+my+computer+so+slow&ia=web"
    start "" "https://raw.githubusercontent.com/aaesth/aaesth.github.io/refs/heads/main/v1.png"
    goto ex2
goto end
