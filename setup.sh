#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
if [ -f "/etc/v2ray/domain" ]; then
echo "Script Sukses Terinstall"
exit 0
fi
mkdir /var/lib/premium-script;
echo "IP=" >> /var/lib/premium-script/ipvps.conf
wget https://raw.githubusercontent.com/Exe303/OppoA53/main/cf.sh && chmod +x cf.sh && ./cf.sh
#install ssh ovpn
wget https://raw.githubusercontent.com/Exe303/OppoA53/main/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
#install v2ray
wget https://raw.githubusercontent.com/Exe303/OppoA53/main/ins-vt.sh && chmod +x ins-vt.sh && screen -S v2ray ./ins-vt.sh
#Install Autobackup
wget https://raw.githubusercontent.com/Exe303/OppoA53/main/set-br.sh && chmod +x set-br.sh && ./set-br.sh
rm -f /root/ssh-vpn.sh
rm -f /root/ins-vt.sh
rm -f /root/set-br.sh
rm -f /root/cf.sh
cat <<EOF> /etc/systemd/system/autosett.service
[Unit]
Description=autosetting
Documentation=https://AcellTunnel

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
echo "  Proses Install Slowdns"
echo ""
echo "  Sedang Mempersiapkan Tool Installing....."
echo ""
echo "  Sedang Mempersiapkan Tool Installing....."
echo ""
echo "  Sedang Mempersiapkan Tool Installing....."
echo ""
echo "  Sedang Mempersiapkan Tool Installing....."
echo ""
echo "  Sedang Mempersiapkan Tool Installing....."
echo ""
echo "  Sedang Mempersiapkan Tool Installing....."
echo ""
echo "  Sedang Mempersiapkan Tool Installing....."
echo ""
clear
#Install Slowdns
rm -rf install; apt update; wget https://github.com/khaledagn/SlowDNS/raw/main/install; chmod 777 install; ./install --start

#Script By Mar
