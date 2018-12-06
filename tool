#!/bin/bash
chmod +x sources/crackling
chmod +x sources/seed
chmod +x sources/oem
chmod +x sources/drivers
chmod +x sources/twrp

tput setaf 1; echo    "-------------------------------"
tput setaf 2; echo    "1. Twrp Kur"
tput setaf 2; echo    "2. dizindeki dosyalari goster"
tput setaf 2; echo    "3. Oem Ayarları"
tput setaf 2; echo    "4. Sürücüleri kur"
tput setaf 2; echo    "5. Otomatik Root (Beta)"
tput setaf 2; echo    "6. Bilgi "
tput setaf 1; echo    "-------------------------------"

tput setaf 1; echo    "---------------------------------"
tput setaf 2; echo        "Secenegi giriniz : "
tput setaf 1; echo    "---------------------------------"

read secenek

case $secenek in
        1)
		  clear
		  cd sources
          sh twrp
          ;;
        2)
		  clear
          ls -al
          bash tool
          ;;
        3)
	      clear
		  cd sources
          sh oem        
          ;;
        4)
		  clear
		  cd sources
          sh drivers
          ;;
        5)
		  clear
	      cd sources
          sh root
          ;;
        6)
		  clear
		  cd sources
          sh info
          ;;
        *)
		  clear
          echo Hatali secenek
		  bash tool
		  ;;
esac
