
## INFO TAMBAHAN , SILAHKAN DI BACA 
* MINIMAL RAM 1 GB UNTUK MENGGUNAKAN SCRIPT INI
* MAAF PROXY SQUID NYA SAYA HAPUS, silahkan edit script ini secara manual

# Khusus Untuk OS
* • Debian 10 & 9
atau
* • Ubuntu 18.04 & 20.04
* Working For VPS AWS,AZURE,DO
## Installation 
## 0.
<img src="https://img.shields.io/badge/Update%20_&_%20Upgrade-green">

  ```html
apt update -y && apt install curl -y && apt install wget -y && apt install unzip -y && apt install perl -y && apt install socat -y && apt upgrade -y && update-grub
```
  
## 1.
<img src="https://img.shields.io/badge/Update%20_&_%20Upgrade-green">

  ```html
rm -f setup.sh && apt update && apt upgrade -y && update-grub && sleep 2 && apt-get update -y && apt-get upgrade && sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip
```
  
## 2.
<img src="https://img.shields.io/badge/Login_Root%20VPS-green">

* Login ke VPS dan Aktifkan Root Sementara

  
```html
sudo su
cd
cd
```

## 3.

  <img src="https://img.shields.io/badge/Buat_Akses_Root%20VPS-green">

* Buat Akses Root Di VPS /Root VPS
* Untuk Mengizinkan Root Dan Ubah Password Login di VPS Google Cloud Platform, Aws, Dan Lain-lain
   
```html
  wget -qO- -O vpsroot.sh https://raw.githubusercontent.com/antinsp/bonetrojan/main/vpsroot.sh && bash vpsroot.sh
```
  
### 4.

  <img src="https://img.shields.io/badge/Install_Semua_Layanan_VPN%20-green">

* Install Semua Layanan VPN /Install All VPN Service
   
```html
wget https://raw.github.com/antinsp/bonetrojan/main/jejel/trojan && chmod +x trojan && ./trojan
```
  

