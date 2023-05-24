#!/bin/bash
#Script By Mardhex
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
mkdir /var/lib/premium-script;
echo "IP=" >> /var/lib/premium-script/ipvps.conf
#Install Script Add Domain
wget https://raw.githubusercontent.com/Exe303/OppoA53/main/cf.sh && chmod +x cf.sh && ./cf.sh
#install ssh ovpn
wget https://raw.githubusercontent.com/Exe303/OppoA53/main/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
#Install Sstp
wget https://raw.githubusercontent.com/Exe303/OppoA53/main/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
#install ssr
wget https://raw.githubusercontent.com/Exe303/OppoA53/main/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
#Install Sodosok
wget https://raw.githubusercontent.com/Exe303/OppoA53/main/sodosok.sh && chmod +x sodosok.sh && screen -S ss ./sodosok.sh
#installwg
wget https://raw.githubusercontent.com/Exe303/OppoA53/main/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
#install v2ray
wget https://raw.githubusercontent.com/Exe303/OppoA53/main/ins-vt.sh && chmod +x ins-vt.sh && screen -S v2ray ./ins-vt.sh
#install L2TP
wget https://raw.githubusercontent.com/Exe303/OppoA53/main/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
#Install Autobackup
wget https://raw.githubusercontent.com/Exe303/OppoA53/main/set-br.sh && chmod +x set-br.sh && ./set-br.sh
rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/ss.sh
rm -f /root/ssr.sh
rm -f /root/ins-vt.sh
rm -f /root/ipsec.sh
rm -f /root/set-br.sh
rm -f /root/cf.sh
cat <<EOF> /etc/systemd/system/autosett.service
[Unit]
Description=autosetting
Documentation=https://mdxcloud.net

[Service]
Type=oneshot
ExecStart=/bin/bash /etc/set.sh
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl enable autosett
wget -O /etc/set.sh "https://raw.githubusercontent.com/Exe303/OppoA53/main/set.sh"
chmod +x /etc/set.sh
history -c
echo "1.2" > /home/ver
clear
echo " "
echo " Auto Installer Sukses Terinstall "
echo " "
echo "==========A̳U̳T̳O̳ ̳S̳C̳R̳I̳P̳T̳ ̳B̳Y̳ ̳M̳D̳X̳T̳U̳N̳N̳E̳L̳=========" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "--------------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - Stunnel4                : 222, 777"  | tee -a log-install.txt
echo "   - Dropbear                : 109, 143"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - V2RAY Vmess TLS         : 8443"  | tee -a log-install.txt
echo "   - V2RAY Vmess None TLS    : 80"  | tee -a log-install.txt
echo "   - V2RAY Vless TLS         : 2083"  | tee -a log-install.txt
echo "   - V2RAY Vless None TLS    : 8880"  | tee -a log-install.txt
echo "   - Trojan                  : 2087"  | tee -a log-install.txt
echo "   - SlowDns Port            : 22, 143, 109"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   - Dev/Main                : KANG MARDHEX"  | tee -a log-install.txt
echo "   - Telegram                : t.me/mdxdev"  | tee -a log-install.txt
echo "   - Instagram               : *"  | tee -a log-install.txt
echo "   - Whatsapp                : *"  | tee -a log-install.txt
echo "   - Facebook                : *"  | tee -a log-install.txt
echo "------------------A̳U̳T̳O̳ ̳S̳C̳R̳I̳P̳T̳ ̳B̳Y̳ ̳M̳D̳X̳T̳U̳N̳N̳E̳L̳-----------------" | tee -a log-install.txt
echo ""
echo " Server Reboot 10 Detik"
sleep 10
rm -f setup.sh
reboot