clear
read -rp "Domain kamu : " -e domen
cat > domain << END
$domen
END
clear
echo "domain berhasil diganti"
sleep 5
echo "lanjutttttt"
sleep 3

domain=$(cat domain)


mkdir /etc/xray
cp /root/domain /etc/xray/domain
mkdir /etc/trojan-go
cd /etc/trojan-go
wget https://github.com/p4gefau1t/trojan-go/releases/download/v0.10.6/trojan-go-linux-amd64.zip
unzip trojan-go-linux-amd64.zip
curl https://get.acme.sh | sh
ln -s /root/.acme.sh/acme.sh /usr/local/bin/acme.sh
acme.sh --set-default-ca --server letsencrypt
acme.sh --issue -d $domain --standalone -k ec-256 --webroot /home/wwwroot/html
acme.sh --install-cert -d $domain --ecc --key-file /etc/trojan-go/server.key --fullchain-file /etc/trojan-go/server.crt
apt install nginx -y
mv /etc/localtime /etc/localtime.bak
ln -s /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
cd /etc/trojan-go
touh /etc/trojan-go/trojan-go.log

# Buat Config Trojan Go
cat > /etc/trojan-go/config.json << END
{
  "run_type": "server",
  "local_addr": "0.0.0.0",
  "local_port": 443,
  "remote_addr": "127.0.0.1",
  "remote_port": 89,
  "log_level": 1,
  "log_file": "/etc/trojan-go/trojan-go.log",
  "password": [
      ""
,"testing"
,"antonbos"
  ],
  "disable_http_check": true,
  "udp_timeout": 60,
  "ssl": {
    "verify": false,
    "verify_hostname": false,
    "cert": "/etc/trojan-go/server.crt",
    "key": "/etc/trojan-go/server.key",
    "key_password": "",
    "cipher": "",
    "curves": "",
    "prefer_server_cipher": false,
    "sni": "$domain",
    "alpn": [
      "http/1.1"
    ],
    "session_ticket": true,
    "reuse_session": true,
    "plain_http_response": "",
    "fallback_addr": "127.0.0.1",
    "fallback_port": 0,
    "fingerprint": "firefox"
  },
  "tcp": {
    "no_delay": true,
    "keep_alive": true,
    "prefer_ipv4": true
  },
  "mux": {
    "enabled": false,
    "concurrency": 8,
    "idle_timeout": 60
  },
  "websocket": {
    "enabled": true,
    "path": "/trojan",
    "host": "$domain"
  },
    "api": {
    "enabled": false,
    "api_addr": "",
    "api_port": 0,
    "ssl": {
      "enabled": false,
      "key": "",
      "cert": "",
      "verify_client": false,
      "client_cert": []
    }
  }
}
END

cat > /etc/systemd/system/trojan-go.service << END
[Unit]
Description=Trojan-Go - An unidentifiable mechanism that helps you bypass GFW
Documentation=https://github.com/p4gefau1t/trojan-go
After=network.target nss-lookup.target
Wants=network-online.target

[Service]
Type=simple
User=root
ExecStart=/etc/trojan-go/trojan-go -config /etc/trojan-go/config.json
Restart=on-failure
LimitNOFILE=infinity

[Install]
WantedBy=multi-user.target
END

cat > /etc/systemd/system/trojan-go@.service << END
[Unit]
Description=Trojan-Go - An unidentifiable mechanism that helps you bypass GFW
Documentation=https://github.com/p4gefau1t/trojan-go
After=network.target nss-lookup.target
Wants=network-online.target

[Service]
Type=simple
User=root
ExecStart=/etc/trojan-go/trojan-go -config /etc/trojan-go/%i.json
Restart=on-failure
LimitNOFILE=infinity

[Install]
WantedBy=multi-user.target
END



# Installing nginx
cat > /etc/nginx/nginx.conf << END
user www-data;
worker_processes auto;
pid /run/nginx.pid;
include /etc/nginx/modules-enabled/*.conf;

events {
	worker_connections 768;
	# multi_accept on;
}

http {

 server {
    listen 80 default_server;
    listen [::]:80 default_server;

    server_name $domain;

 location / {
    proxy_pass https://www.bing.com;
    proxy_ssl_server_name on;
    proxy_redirect off;
    sub_filter_once off;
    sub_filter "www.bing.com" $server_name;
    proxy_set_header Host "www.bing.com";
    proxy_set_header Referer $http_referer;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header User-Agent $http_user_agent;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto https;
    proxy_set_header Accept-Encoding "";
    proxy_set_header Accept-Language "zh-CN";
    }
  }
}

#mail {
#	# See sample authentication script at:
#	# http://wiki.nginx.org/ImapAuthenticateWithApachePhpScript
# 
#	# auth_http localhost/auth.php;
#	# pop3_capabilities "TOP" "USER";
#	# imap_capabilities "IMAP4rev1" "UIDPLUS";
# 
#	server {
#		listen     localhost:110;
#		protocol   pop3;
#		proxy      on;
#	}
# 
#	server {
#		listen     localhost:143;
#		protocol   imap;
#		proxy      on;
#	}
#}
END

wget https://raw.github.com/antinsp/bonetrojan/main/jejel/menu/ak
wget https://raw.github.com/antinsp/bonetrojan/main/jejel/menu/del
wget https://raw.github.com/antinsp/bonetrojan/main/jejel/menu/menu
wget https://raw.github.com/antinsp/bonetrojan/main/jejel/menu/renew
wget https://raw.github.com/antinsp/bonetrojan/main/jejel/menu/restart
wget https://raw.github.com/antinsp/bonetrojan/main/jejel/menu/xp
wget https://raw.github.com/antinsp/bonetrojan/main/jejel/menu/xp_cron
wget https://raw.github.com/antinsp/bonetrojan/main/jejel/menu/reboot_vps
wget https://raw.github.com/antinsp/bonetrojan/main/jejel/menu/reboot_otomatis.sh
wget https://raw.github.com/antinsp/bonetrojan/main/jejel/menu/certv2ray
wget https://raw.github.com/antinsp/bonetrojan/main/jejel/menu/addhost

mv certv2ray /bin/certv2ray
mv addhost /bin/addhost
mv ak /bin/ak
mv del /bin/del
mv menu /bin/menu
mv renew /bin/renew
mv restart /bin/restart
mv xp /bin/xp
mv xp_cron /etc/cron.d/xp_cron
mv reboot_vps /etc/cron.d/reboot_vps
mv reboot_otomatis.sh /root/reboot_otomatis.sh

chmod 755 /bin/ak
chmod 755 /bin/addhost
chmod 755 /bin/certv2ray
chmod 755 /bin/del
chmod 755 /bin/menu
chmod 755 /bin/renew
chmod 755 /bin/restart
chmod 755 /bin/xp
chmod 755 /etc/cron.d/xp_cron
chmod 755 /etc/cron.d/reboot_vps
chmod 755 /root/reboot_otomatis.sh


cd /var/lib
mkdir crot
touch /var/lib/crot/ipvps.conf

apt install build-essential gcc make libsqlite3-dev -y
wget https://humdi.net/vnstat/vnstat-2.8.tar.gz
tar -xvzf vnstat-2.8.tar.gz
cd vnstat-2.8
./configure --prefix=/usr --sysconfdir=/etc
make
make install
cp -v examples/systemd/vnstat.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable vnstat
systemctl start vnstat
systemctl unmask vnstat
systemctl enable vnstat
systemctl start vnstat

apt install speedtest.cli -y

systemctl daemon-reload 
systemctl enable trojan-go 
systemctl start trojan-go
systemctl status trojan-go
