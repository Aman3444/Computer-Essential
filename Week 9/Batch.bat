@echo off
:menu
cls
echo Press 1 to run the ipconfig command
echo Press 2 to run the ipconfig/all command
echo press 3 allows the user to release their current IP address for their adaptor. 
echo press 4 allows the user to renew their adaptor’s IP address. 
echo press 5 allows the user remove all entries from their DNS cache i.e. to flush the cache. 
echo press 6 allows the user to stop the print spooler. The command to stop the print spooler is net stop spooler. 
echo press 7 allows the user to start the print spooler. The command to start the spooler is: net start spooler. 
echo press 8 ping google.com
echo press 9 Tracert google.com
echo:
echo Press q to quit program

set /p choice="Enter the number of the operation you wish to run: "

if "%choice%"=="1" goto one
if "%choice%"=="2" goto two
if "%choice%"=="3" goto three
if "%choice%"=="4" goto four

if "%choice%"=="5" goto five
if "%choice%"=="6" goto six

if "%choice%"=="7" goto seven
if "%choice%"=="8" goto eight
if "%choice%"=="9" goto nine
if "%choice%"=="q" exit

:one
ipconfig
pause
goto menu

:two
ipconfig /all
pause
goto menu


:three
ipconfig /ping
pause
goto menu

:four
ipconfig /release
ipconfig /renew
pause
goto menu

:five
ipconfig /flushdns
pause
goto menu

:six
net stop spooler
pause
goto menu

:seven
net start spooler
pause
goto menu

:eight
ping google.com
pause
goto menu

:nine 
Tracert google.com
pause
goto menu
