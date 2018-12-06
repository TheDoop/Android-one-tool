@echo off
:oemstrart
color 3
echo ++++++++++++++++++++++++++++++++++++++
echo + 6- Oem kilitle                     +
echo + 7- Oem Kilidi Ac                   +
echo + b- Geri don                        +
echo + 9- Yardim                          +
echo +                                    +
echo ++++++++++++++++++++++++++++++++++++++

set /p option=Secim yapiniz: || set option="0"

if /I %option%==6 goto 6

if /I %option%==7 goto 7

if /I %option%==b goto b

if /I %option%==9 goto 9


:b
cls
call "DAOT.exe"
:6
cls
color 4
echo ++++++++++++++++++++++++++++++++++++++
echo +                                    +
echo +                                    +
echo +        OEM Kilitleniyor...         +
echo +                                    +
echo +                                    +
echo ++++++++++++++++++++++++++++++++++++++
adb reboot bootloader
cls
fastboot oem lock-go
pause
goto oemstart

:7
cls
color 7
echo ++++++++++++++++++++++++++++++++++++++
echo +                                    +
echo +                                    +
echo +          OEM Aciliyor....          +
echo +                                    +
echo +                                    +
echo ++++++++++++++++++++++++++++++++++++++
adb reboot bootloader
cls
fastboot oem unlock-go
pause
goto oemstart

:9
cls
color a
echo ++++++++++++++++++++++++++++++++
echo +Oem kilidi acmak tum verileri +
echo +siler!                        +
echo +cihaz fastboot modunda veya   +
echo +USB hata ayiklama acik bir    +
echo +Sekilde USB ile baglanmalidir.+
echo ++++++++++++++++++++++++++++++++
pause
goto oemstart


