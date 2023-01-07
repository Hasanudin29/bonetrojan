
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
apt update -y && apt install curl -y && apt install wget -y && apt install unzip -y && apt install perl -y && apt install socat -y && update-grub
```
  
## 1.
<img src="https://img.shields.io/badge/Update%20_&_%20Upgrade-green">

  ```html
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
gema "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p
```
  
## 2.0
<img src="https://img.shields.io/badge/Login_Root%20VPS-green">

* Login ke VPS dan Aktifkan Root Sementara

  
```html
sudo su
cd
cd
```

## 2.

  <img src="https://img.shields.io/badge/Buat_Akses_Root%20VPS-green">

* Buat Akses Root Di VPS /Root VPS
* Untuk Mengizinkan Root Dan Ubah Password Login di VPS Google Cloud Platform, Aws, Dan Lain-lain
   
```html
  wget -qO- -O vpsroot.sh https://raw.githubusercontent.com/antinsp/bonetrojan/main/vpsroot.sh && bash vpsroot.sh
```
  
### 3.

  <img src="https://img.shields.io/badge/Install_Semua_Layanan_VPN%20-green">

* Install Semua Layanan VPN /Install All VPN Service
   
```html
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/antinsp/bonetrojan/main/setup.sh && chmod +x setup.sh && sed -i -e 's/\r$//' setup.sh && screen -S setup ./setup.sh
```
  

### 4. DONE / SELESAI
<img src="https://img.shields.io/badge/DONE%20_/_%20SELESAI-green">

* • jika tidak bisa login di vps ,gunakan port ssh
* • 22, 2253

### Jangan Lupa Traktir Kopi
<a href="https://trakteer.id/sulaiman-l/tip" target="_blank"><img id="wse-buttons-preview" src="https://cdn.trakteer.id/images/embed/trbtn-red-6.png" height="40" style="border: 0px; height: 40px;" alt="Trakteer Saya"></a>
https://trakteer.id/sulaiman-l/tip

### 5. MENU, INFO ,UPDATE ,FIX
* untuk menampilkan menu
```html
menu
```
* untuk update menu dan update info
```html
updatemenu
```
* otomatis untuk memperbaiki error SSLH, WS-TLS
```html
sl-fix
```
```html
reboot
```
* Perbaiki SSL ERROR
* otomatis untuk memperbaiki error Sertifikat SSL/TLS dan SUBDOMAIN
* perbaiki error di bagian acme domain
* untuk update Sertifikat SSL/TLS
```html
slhost && certv2ray
```
* lalu restart
```html
restart
```
*
*
*

### 6. FIX ERROR SSLH WS
# Auto Fix Error SSLH + WS-TLS 443
* 1 • Jika terjadi error di SSLH dan SSH WS-TLS nya,gunakan script ini untuk memperbaiki nya
```html
menu
 ```

* 2 • di menu lalu pilih 17 (SL-FIX Menu)
```html
17
 ```

* 3 • jika sudah selesai lalu reboot/ hidupkan ulang vps nya
```html
reboot
 ```

### 7. Info Websocket
* Websocket harus menggunakan subdomain/domain dan sudah di pointing di cloudflare (CDN CLOUDFLARE)
* Tanpa subdomain/domain mustahil bisa terhubung dengan bug yang berasal dari cloudflare
*
*
*

### 8. Edit Port SSL WS atau Ganti Port SSL(Manual)
* ubah port yg mau di ubah ,jika 443 silahkan ubah tulisan yang ada 443
* setelah di edit lalu di simpan (CTRL+X+Y dan enter)

```html
nano /etc/systemd/system/ws-tls.service
 ```
```html
nano /usr/local/bin/ws-tls
 ```
```html
nano /etc/default/sslh
 ```
```html
nano /etc/stunnel5/stunnel5.conf
 ```

### 100 (Fix manual) Fix Error SSLH

* Perbaiki sslh yang error di vps yang tidak support sslh
* khusus yang vps nya tidak support sslh
* matikan ws-tls
```html
systemctl stop ws-tls
```
* buat user sslh / edit passwd
```html
echo sslh:x:109:114::/nonexistent:/usr/sbin/nologin >> /etc/passwd
```
* note: edit passwd dan pindah sslh nya di atas vnstat

* start sslh dan jalankan
```html
systemctl start sslh
/etc/init.d/sslh start
/etc/init.d/sslh restart
```
* lalu start ws-tls
```html
systemctl start ws-tls
```
```html
reboot
```
*done



# INFO Khusus SlowDNS
• SSH Over DNS (SlowDNS)
* untuk kecepatan nya di batasi
* speed download 4 Mbps (Max Speed)
* Support semua port ssh

### Fitur Script

• CEK SEMUA IP DAN PORT (Service ALL VPN)

• SSH & OpenVPN

• SSH Over DNS (SlowDNS)

• SSH Over Websocket (Cloudflare)

• OpenVPN Over Websocket (Cloudflare)

• SSLH

• SSH CloudFront Over Websocket (Aws CloudFront Only) [OFF]

• OHP SSH & OHP Dropbear & OHP OpenVPN (OPEN HTTP PUNCHER)

• XRAY VMESS 

• XRAY VLESS

• XRAY TROJAN

• XRAY VMESS GRPC

• XRAY VLESS GRPC

• SHADOWSOCKS 

• SHADOWSOCKS OBFS

• SHADOWSOCKS xray-plugin

• SHADOWSOCKS v2ray-plugin

• SHADOWSOCKS gost-plugin

• SSR

• PPTP VPN

• L2TP VPN

• SSTP VPN

• WIREGUARD

• TROJAN GO

• Backup Data ALL Service

• Restore Data ALL Service

• Auto Fix

• Auto Update

### Os Supported

• Debian 10 & 9

• Ubuntu 18.04 & 20.04

# Service & Port

• SlowDNS                   : All Port SSH

• OpenSSH                   : 22, 2253

• Dropbear                  : 443, 109, 143, 1153

• Stunnel5                  : 443, 445, 777

• OpenVPN                   : TCP 1194, UDP 2200, SSL 990

• Websocket SSH TLS         : 443

• Websocket SSH HTTP        : 8880

• Websocket OpenVPN         : 2086

• Squid Proxy               : 3128, 8080 [OFF]

• Badvpn                    : 7100, 7200, 7300

• Nginx                     : 89

• Wireguard                 : 7070

• L2TP/IPSEC VPN            : 1701

• PPTP VPN                  : 1732

• SSTP VPN                  : 444

• Shadowsocks-R             : 1443-1543

• SS-OBFS TLS               : 2443-2543

• SS-OBFS HTTP              : 3443-3543

• XRAYS Vmess TLS           : 8443

• XRAYS Vmess None TLS      : 80

• XRAYS Vless TLS           : 8443

• XRAYS Vless None TLS      : 80

• XRAYS Trojan              : 2083

• XRAYS Vmess GRPC TLS      : 1180,3380

• XRAYS Vless GRPC TLS      : 2280,4480

• OHP SSH                   : 8181

• OHP Dropbear              : 8282

• OHP OpenVPN               : 8383

• Trojan Go                 : 2087

• CloudFront Over Websocket : [OFF]


 ### Server Information & Other Features

• Timezone                : Asia/Jakarta (GMT +7)

• Fail2Ban                : [ON]

• Dflate                  : [ON]

• IPtables                : [ON]

• Auto-Reboot             : [ON]

• IPv6                    : [OFF]

• Autoreboot On 05.00 GMT +7

• Autoreboot On 00.00 GMT +7

• Autoreboot On 12.00 GMT +7

• Autoreboot On 18.00 GMT +7

• Auto Delete Expired Account

• Full Orders For Various Services

• White Label

• Auto Fix

• Auto Update

<p align="center">
<img height=21 src="https://komarev.com/ghpvc/?username=fisabiliyusri">
</p>
<div height='45' align="center">
<h2>Contact me: <br>
<a href="https://github.com/fisabiliyusri"> <img src="https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/github.svg" height='50'> </a>
<a href="https://facebook.com/sulaiman.xl"> <img src="https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/facebook.svg" height='50'> </a>
<a href="https://trakteer.id/sulaiman-l/tip"> <img src="https://cdn.trakteer.id/images/embed/trbtn-red-6.png" height='50'> </a>
</h2>
</div>
<h2 align="center">
<img height=150 src="https://github-readme-stats.vercel.app/api/top-langs/?username=fisabiliyusri&layout=compact&theme=dark">
<img height=150 src="https://github-readme-stats.vercel.app/api?username=fisabiliyusri&count_private=true&show_icons=true&theme=dark">
<h2 align="center">
