@ Echo off
title Hotspot Win8 Versi 1.1
msg %username% Welcome to Hotspot Win8 Versi 1.1
goto beranda
:home
cls
color 0a
echo -------------------------------------------------------------------------------
echo 			Welcome to Hotspot Win8 Version 1.1
echo -------------------------------------------------------------------------------
echo Starting.....
echo.
echo   Welcome %username%
echo.                         
echo   DATE    : %date%
echo.     
echo   TIME    : %time%
echo.
echo.
echo.  1.Activate Hotspot
echo.  2.Deactivate Hotspot
echo.  3.Auto Create Hotspot (Default Hotspot)
echo.  4.Status Hotspot
echo.  5.Developer Info
echo.  6.Change into Indonesian Language
echo.  7.Internet Sharing Tips (for Windows 7 or Windows 8)
echo.  8.Exit
echo.
set/p "input=>>> Enter your choose:"
echo.
if %input%==1 goto act
if %input%==2 goto dct
if %input%==3 goto ato
if %input%==4 goto status
if %input%==5 goto more
if %input%==6 goto beranda
if %input%==7 goto tps
if %input%==8 goto exit
if NOT %input%==1 goto error
goto home

:tps
cls
echo -------------------------------------------------------------------------------
echo.  If you have activated your Hotspot then you want to share your 
echo.  Internet connection,then you have to follow this intruction:
echo -------------------------------------------------------------------------------
echo.  1.go to Network and Sharing center(it can be reached by several way) the 
echo.    simplest way is just press win logo key + R key then type "ncpa.cpl" 
echo.    without ""
echo.    
echo.  2.Then there will pop-up window appear which show you network adapter
echo.    on your computer like wifi adapter, LAN , Modem or Bluetooh
echo.
echo.  3.Then click active connection that have internet access
echo.
echo.  4.Then right click on it.Choose Properties at bottom menu
echo.
echo.  5.Choose "Sharing" Tab then, cek Allow.....
echo.
echo.  6.then, in panel box, choose hotspot which you have made before
echo.
echo.  7.The last, just try to browse on other device :)
echo -------------------------------------------------------------------------------
echo.
set/p "input=>>> Do you want to configure it right now (y/n)?"
if %input%==y goto set_inet
if %input%==n goto home
if NOT %input%==y goto error_tps
pause
goto home

:set_inet
ncpa.cpl
pause
goto home

:error
echo.
echo.  ERROR:Unrecognized Input.Please Try the Right Number Above.Just choose 
echo.  Number 1-8
echo.
pause
goto home

:error_tps
echo.
echo.  ERROR:Unrecognized Input.Please Try the Right one.Just type 
echo.  y or n on your Keyboard
echo.
pause
goto tps

:act
set/p "input=>>> Enter your Hotspot Name (Without Space Character):"
echo.
netsh wlan set hostednetwork mode=allow ssid=%input%
set/p "input=>>> Enter your Hotspot Password (must be 8 digits or more):"
netsh wlan set hostednetwork mode=allow key=%input%
echo.
cls
echo -------------------------------------------------------------------------------
echo 				Notification
echo -------------------------------------------------------------------------------
echo.
netsh wlan start hostednetwork
echo.
echo successfully applied....
echo -------------------------------------------------------------------------------
echo 			your hotspot has been activated
echo -------------------------------------------------------------------------------
echo.
msg %username% /TIME:2 your hotspot has been activated
goto home

:dct
cls
echo -------------------------------------------------------------------------------
echo 				Notification
echo -------------------------------------------------------------------------------
echo.
netsh wlan stop hostednetwork

echo -------------------------------------------------------------------------------
echo 			your hotspot has been stopped
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
msg %username% /TIME:2 your hotspot has been stopped
pause
goto home

:ato
cls
echo -------------------------------------------------------------------------------
echo 				Notification
echo -------------------------------------------------------------------------------
echo.
netsh wlan set hostednetwork mode=allow ssid=Win8_Hotspot_V.1.1
netsh wlan set hostednetwork mode=allow key=12345678
netsh wlan start hostednetwork
echo.
echo successfully applied....
echo.
echo -------------------------------------------------------------------------------
echo.
echo   Hotspot Name : Win8_Hotspot_V.1.1
echo.
echo   Password     : 12345678
echo.
echo -------------------------------------------------------------------------------
echo 			your hotspot has been activated
echo -------------------------------------------------------------------------------
echo.
msg %username% /TIME:2 your hotspot has been activated
pause
goto home


:more
msg %username% This is sofware utility modding by : --------------------------------------------------------------------------------------Muhammad Irwan Andriawan  :::  Student of State Polytechnic of Jember  :::  English Study Program 2013
cls
echo -------------------------------------------------------------------------------
echo   Modding by Muhammad Irwan Andriawan
echo.
echo   Student of State Polytechnic of Jember
echo.
echo   English Study Program
echo.
echo   2013 
echo -------------------------------------------------------------------------------
echo   087857854930 (CP)
echo.
echo   http://www.facebook.com/eywarnerone (FB)
echo.
echo   5361E881 (PIN BBM)
echo.
echo -------------------------------------------------------------------------------
pause
goto home

:status
cls
netsh wlan show hostednetwork
echo.
pause
goto home


:exit
msg %username% Thank you for using this Utility @AndriawanNET Developer
start iexplore  http://www.facebook.com/eywarnerone
exit

:beranda
cls
color cf
echo -------------------------------------------------------------------------------
echo 	            Selamat Datang di Hotspot Win8 Versi 1.1 + DNS
echo -------------------------------------------------------------------------------
echo Memulai.....
echo.
echo   Selamat datang %username%
echo.                         
echo   TANGGAL    : %date%
echo.     
echo   WAKKTU     : %time%
echo.
echo.
echo.  1.Aktivasi Hotspot
echo.  2.Deaktivasi Hotspot
echo.  3.Pembuat Hotspot Otomatis (Standart Hotspot)
echo.  4.Status Hotspot
echo.  5.Informasi Pengembang
echo.  6.Beralih ke Bahasa Inggris
echo.  7.Tips Sharing Internet(untuk Windows 7 atau Windows 8)
echo.  8.Keluar
echo.  9.Aktivasi DNS
echo.  0.Deaktivasi DNS
echo.  10.Aktivasi XAMPP
echo.  11.Deaktivasi XAMPP
echo.
set/p "input=>>> Ketikan Pilihan Anda:"
echo.
if %input%==1 goto akt
if %input%==2 goto dkt
if %input%==3 goto stn
if %input%==4 goto stt
if %input%==5 goto inf
if %input%==6 goto home
if %input%==7 goto tpd
if %input%==8 goto klr
if %input%==9 goto dns
if %input%==0 goto dns2
if %input%==10 goto xampp
if %input%==11 goto xamppd
if NOT %input%==1 goto ksl

:xampp
cd\
cd xampp
start /MIN xampp-control.exe
cd C:\xampp\apache\bin
start /MIN httpd.exe
pause
goto beranda

:xamppd
cd C:\Windows\system32
taskkill /IM httpd.exe
taskkill /IM xampp-control.exe
pause
goto beranda

:dns
cd C:\Program Files\ISC BIND 9\bin
start /MIN named.exe -f
cd C:\Windows\system32
pause
goto beranda

:dns2
cd C:\Windows\system32
taskkill /IM named.exe
pause
goto beranda


:tpd
cls
echo -------------------------------------------------------------------------------
echo.  Jika anda telah mengaktifkan Hotspot dan ingin berbagi koneksi Internet, 
echo.  anda harus mengikuti langkah-langkah berikut ini:
echo -------------------------------------------------------------------------------
echo.  1.buka Network and Sharing center(dapat dibuka dengan banyak cara) cara 
echo.    paling mudah adalah dengan menekan tombol logo window + tombol R di 
echo.    keyboard lalu ketik "ncpa.cpl" tanpa tanda ""
echo.    
echo.  2.Akan keluar kotak dialog yang akan menampilkan Adapter jaringan yang aktif
echo.    seperti wifi adapter, LAN , Modem dan Bluetooh
echo.
echo.  3.Lalu pilih koneksi yang aktif yang memiliki koneksi internet
echo.
echo.  4.Lalu klik kanan pada koneksi itu dan pilih tab Properties di menu paling
echo.    bawah
echo.  
echo.  5.Pilih "Sharing" Tab lalu, centang dialog box Allow bla bla bla.....
echo.
echo.  6.lalu, di panel box, pilih hotspot yang telah kamu buat sebelumnya
echo.
echo.  7.saatnya coba hotspot internet diperangkat lain :)
echo -------------------------------------------------------------------------------
echo.
set/p "input=>>> Apakah anda ingin mengatur koneksi sekarang (y/n)?"
if %input%==y goto set_inetx
if %input%==n goto beranda
if NOT %input%==y goto ksl_inet
pause
goto beranda

:set_inetx
ncpa.cpl
pause
goto beranda


:ksl_inet
echo.
echo.  KESALAHAN:Tidak dapat mengenali perintah. Ketikan y atau n  
echo.  pada Keyboard anda
echo.
pause
goto tpd

:ksl
echo.
echo.  KESALAHAN:Tidak dapat mengenali perintah.Sialahkan coba angka yang telah 
echo.  disediakan di atas Silahkan pilih Nomor 1 s/d 8
echo.
pause
goto beranda

:akt

set/p "input=>>> Ketikan Nama Hotspot anda (Tanpa Karakter Spasi):"
echo.
netsh wlan set hostednetwork mode=allow ssid=%input%
echo.
set/p "input=>>> Ketikan Password Hotspot anda (harus 8 digit atau lebih):"
netsh wlan set hostednetwork mode=allow key=%input%
echo.
cls
echo -------------------------------------------------------------------------------
echo 				Pemberitahuan
echo -------------------------------------------------------------------------------
echo.
netsh wlan start hostednetwork
echo.
echo berhasil diterapkan....
echo -------------------------------------------------------------------------------
echo 			 hotspot anda telah aktif
echo -------------------------------------------------------------------------------
echo.
msg %username% /TIME:2 Hotspot anda telah aktif
pause
goto beranda

:dkt
cls
echo -------------------------------------------------------------------------------
echo 				Pemberitahuan
echo -------------------------------------------------------------------------------
echo.
netsh wlan stop hostednetwork

echo -------------------------------------------------------------------------------
echo 			 hotspot anda telah berhenti
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
msg %username% /TIME:2 Hotspot anda telah berhenti
pause
goto beranda

:stn
cls
echo -------------------------------------------------------------------------------
echo 				Pemberitahuan
echo -------------------------------------------------------------------------------
echo.
netsh wlan set hostednetwork mode=allow ssid=Win8_Hotspot_V.1.1
netsh wlan set hostednetwork mode=allow key=12345678
netsh wlan start hostednetwork
echo.
echo Sukses diterapkan....
echo.
echo -------------------------------------------------------------------------------
echo.
echo   Nama Hotspot Anda : Win8_Hotspot_V.1.1
echo.
echo   Password          : 12345678
echo.
echo -------------------------------------------------------------------------------
echo 			hotspot anda telah aktif
echo -------------------------------------------------------------------------------
echo.
msg %username% /TIME:2 Hotspot anda telah aktif
pause
goto beranda


:inf
msg %username% Ini adalah software utilitas yang dikembangkan oleh : --------------------------------------------------------------------------------------  :::  Muhammad Irwan Andriawan  :::  Mahasiswa Politeknik Negeri Jember  :::  Program Studi Bahasa Inggris 2013  :::  
cls
echo -------------------------------------------------------------------------------
echo   Edit software oleh Muhammad Irwan Andriawan
echo.
echo   Mahasiswa Politeknik Negeri Jember
echo.
echo   Program Studi Bahasa Inggris
echo.
echo   2013
echo -------------------------------------------------------------------------------
echo   087857854930 (CP)
echo.
echo   http://www.facebook.com/eywarnerone (FB)
echo.
echo   5361E881 (PIN BBM)
echo.
echo -------------------------------------------------------------------------------
pause
goto beranda

:stt
cls
netsh wlan show hostednetwork
echo.
pause
goto beranda


:klr
msg %username% Terima kasih telah menggunakan software ini @AndriawanNET Developer
start iexplore  http://www.facebook.com/eywarnerone
exit
