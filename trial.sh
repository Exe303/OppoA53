#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Script By Mardhex"
clear
if [[ "$IP2" = "" ]]; then
domain=$(cat /etc/v2ray/domain)
else
domain=$IP2
fi
read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif

IP=$(wget -qO- icanhazip.com);
sleep 1
echo Ping Host
echo Cek Hak Akses...
sleep 0.5
echo Permission Accepted
clear
sleep 0.5
echo Membuat Akun: $Login
sleep 0.5
echo Setting Password: $Pass
sleep 0.5
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
created=`date -d "0 days" +"%d-%m-%Y"`
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "==============================="
echo -e "        𝗔𝗖𝗖𝗢𝗨𝗡𝗧 𝗜𝗡𝗙𝗢𝗥𝗠𝗔𝗧𝗜𝗢𝗡     "
echo -e "==============================="
echo -e "IP/Host     : $IP"
echo -e "Domain      : ${domain}"
echo -e "Username    : $Login "
echo -e "Password    : $Pass"
echo -e ""
echo -e "==============================="
echo -e "         𝗦𝗘𝗥𝗩𝗘𝗥 𝗜𝗡𝗙𝗢𝗥𝗠𝗔𝗧𝗜𝗢𝗡      "
echo -e "==============================="
echo -e "OpenSSH     : 22"
echo -e "Dropbear    : 109, 143"
echo -e "Slowdns Port: 22, 443, 109,"
echo -e "Ws None TLS : 80"
echo -e "Ws TLS      : 443"
echo -e "SSL/TLS     : 222, 777, 443"
echo -e "BadVpn      : 7100-7300"
echo -e ""
echo -e "==============================="
echo -e "         𝗦𝗟𝗢𝗪𝗗𝗡𝗦 𝗦𝗘𝗥𝗩𝗘𝗥            "
echo -e "==============================="
echo -e "Name Server :" && cat /etc/slowdns/infons
echo -e "Public Key  :" && cat /root/server.pub
echo -e ""
echo -e "==============================="
echo -e "Created     : $created"
echo -e "Expired     : $exp"
echo -e "==============================="
echo -e ""
echo -e "Script By Mardhex"
echo -e ""