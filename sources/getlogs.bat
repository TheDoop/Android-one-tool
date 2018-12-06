@shift /0
@echo off
:main
cls
Color 7
echo ++++++++++++++++++++++++++++++++++++++
echo + 1- Get Logcat                      +
echo + 2- Get Logcat  (force)             +
echo + 3- Get Logcat  (Reboot)            +
echo + 4- Get Dmseg                       +
echo + 5- Get Dmseg   (force)             +
echo + 6- Get Dmseg   (reboot)            +
echo + 7- Exit                            +
echo +                                    +
echo +                           v.3.2.1  +
echo +           Doop's Android One Tool  +
echo ++++++++++++++++++++++++++++++++++++++
color a
set /p option=Secim yapiniz: || set option="0"

if /I %option%==1 goto 1

if /I %option%==2 goto 2

if /I %option%==3 goto 3

if /I %option%==4 goto 4

if /I %option%==5 goto 5

if /I %option%==6 goto 6

if /I %option%==7 goto 7

:1
color 4
cls
echo ++++++++++++++++++++++++++++++++++++++
echo +                                    +
echo +                                    +
echo +        Getting Logcat              +
echo +                                    +
echo +                     CTRL+C to stop +
echo ++++++++++++++++++++++++++++++++++++++
adb logcat > log.txt
goto main
:2
color 4
cls
echo ++++++++++++++++++++++++++++++++++++++
echo +                                    +
echo +                                    +
echo +        Getting Logcat (force)      +
echo +                                    +
echo +                     CTRL+C to stop +
echo ++++++++++++++++++++++++++++++++++++++

adb logcat > log-forced.txt
adb logcat > log-forced.txt
adb logcat > log-forced.txt
adb logcat > log-forced.txt
adb logcat > log-forced.txt
adb logcat > log-forced.txt
goto main

:3
cls
color 4
echo ++++++++++++++++++++++++++++++++++++++
echo +                                    +
echo +                                    +
echo +        Getting Logcat (reboot)     +
echo +                                    +
echo +                     CTRL+C to stop +
echo ++++++++++++++++++++++++++++++++++++++
adb reboot && adb logcat > logcat-reboot.txt
goto main

:4
cls
color 4
echo ++++++++++++++++++++++++++++++++++++++
echo +                                    +
echo +                                    +
echo +        Getting Dmseg               +
echo +                                    +
echo +                     CTRL+C to stop +
echo ++++++++++++++++++++++++++++++++++++++

adb shell dmesg > dmseg.txt

goto main

:5
cls
color 4
echo ++++++++++++++++++++++++++++++++++++++
echo +                                    +
echo +                                    +
echo +        Getting Dmseg               +
echo +                                    +
echo +                     CTRL+C to stop +
echo ++++++++++++++++++++++++++++++++++++++

adb shell dmesg > dmseg-forced.txt
adb shell dmesg > dmseg-forced.txt
adb shell dmesg > dmseg-forced.txt
adb shell dmesg > dmseg-forced.txt
adb shell dmesg > dmseg-forced.txt
adb shell dmesg > dmseg-forced.txt

goto main

:6
cls
color 4
echo ++++++++++++++++++++++++++++++++++++++
echo +                                    +
echo +                                    +
echo +        Getting Dmseg               +
echo +                                    +
echo +                     CTRL+C to stop +
echo ++++++++++++++++++++++++++++++++++++++

adb reboot && adb shell dmesg > dmseg-reboot.txt
goto main

:7
exit





















