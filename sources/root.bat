@echo off
:start
cls
Color 7
echo ++++++++++++++++++++++++++++++++++++++
echo +       Android Surumu Seciniz       +
echo +                                    +
echo + 1- 5.x (Lollipop)                  +
echo +                                    +
echo + 2- 6.x (Marshmallow)               +
echo +                                    +
echo + 3- 7.x (Nougat)                    +
echo +                                    +
echo + 4- Magisk Systemless (5.0 ve uzeri)+
echo +                                    +
echo + 5- Geri                            +
echo +                                    +
echo +                                    +
echo +                Automatic Root 1.2  +
echo +                             BETA!  +
echo ++++++++++++++++++++++++++++++++++++++
color a
set /p option=Secim yapiniz: || set option="0"

if /I %option%==1 goto 51

if /I %option%==2 goto 60

if /I %option%==3 goto 71

if /I %option%==5 goto geri

if /I %option%==4 goto magisk

:geri
cd..
call "DAOT.exe"

:51
cls
color 8
echo ++++++++++++++++++++++++++++++++++++++
echo +                                    +
echo +                                    +
echo +             Rooting...             +
echo +                                    +
echo +                                    +
echo ++++++++++++++++++++++++++++++++++++++

adb reboot bootloader
cls
fastboot boot seed.img
cls
adb sideload Root-5.x.zip
cls 

goto start

:60
cls
color 8
echo ++++++++++++++++++++++++++++++++++++++
echo +                                    +
echo +                                    +
echo +             Rooting...             +
echo +                                    +
echo +                                    +
echo ++++++++++++++++++++++++++++++++++++++

adb reboot bootloader
cls
fastboot boot seed.img
cls
adb sideload Root-6.x.zip
cls
adb reboot
cls 

goto start

:71

cls
color 8
echo ++++++++++++++++++++++++++++++++++++++
echo +                                    +
echo +                                    +
echo +             Rooting...             +
echo +                                    +
echo +                                    +
echo ++++++++++++++++++++++++++++++++++++++

adb reboot bootloader
cls
fastboot boot seed.img
cls
adb sideload Root -Android 7.0.zip
cls
adb reboot
cls 
goto start

:magisk
cls
color 8
echo ++++++++++++++++++++++++++++++++++++++
echo +                                    +
echo +                                    +
echo +  (Magisk-Systemless) Rooting...    +
echo +                                    +
echo +                                    +
echo ++++++++++++++++++++++++++++++++++++++

adb reboot bootloader
cls
fastboot boot seed.img
cls
adb sideload magisk.zip
cls
goto start
