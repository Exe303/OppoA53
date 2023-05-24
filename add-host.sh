#!/bin/bash
# Script By Mardhex
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
clear
read -rp "Silakan Masukan Domain Anda : " -e domain
echo "IP=$domain" >>/var/lib/premium-script/ipvps.conf
rm -rf /etc/v2ray/domain
echo $domain > /etc/v2ray/domain
certv2ray
