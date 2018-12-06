@shift /0
@echo off
:b
cls
@shift /0
@echo off
cls
title Android One Tool
mode con cols=50 lines=20
color f1
echo ++++++++++++++++++++++++++++++++++++++
echo + 1- Crackling Twrp                  +
echo + 2- Seed Twrp                       +
echo + 3- Root(Beta)                      +
echo + 4- Oem Lock-Unlock                 +
echo + 5- bilgi                           +
echo + 6- Log                             +
echo +                              v5    +
echo +           Doop's Android One Tool  +
echo ++++++++++++++++++++++++++++++++++++++
set /p option=Secim yapiniz: || set option="0"

if /I %option%==2 goto 2

if /I %option%==1 goto 1

if /I %option%==b goto b

if /I %option%==3 goto 3

if /I %option%==4 goto 4
if /I %option%==6 goto 6

if /I %option%==5 goto info

:6
cd /sources/
call getlogs.bat
cd..


:1
cls
color 7
echo ++++++++++++++++++++++++++++++++++++++
echo +                                    +
echo +                                    +
echo +      Twrp Crackling Kuruluyor      +
echo +                                    +
echo +                                    +
echo ++++++++++++++++++++++++++++++++++++++
adb reboot bootloader
cls
fastboot flash recovery crackling.img
goto b
:2
cls
color c
echo ++++++++++++++++++++++++++++++++++++++
echo +                                    +
echo +                                    +
echo +        Twrp Seed Kuruluyor         +
echo +                                    +
echo +                                    +
echo ++++++++++++++++++++++++++++++++++++++
adb reboot bootloader
cls
fastboot flash recovery seed.img
goto b

:3

cls
cd  sources
call "root.bat"
cd..

:4

cls
color 3
call "oem.bat"

:info
cls
color a

echo ++++++++++++++++++++++++++++++++
echo +Doop Andoid One Tool          +
echo +v.2.2                         +
echo +TheDoop@mail.ru               +
echo +Please Rerport Bugs           +
echo ++++++++++++++++++++++++++++++++
pause
goto oemstart

pause
