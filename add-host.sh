#!/bin/bash
read -p "Silakan Masukan Domain Anda : " domainbaru
#Validate
if [[ $domainbaru == "" ]]; then
echo "Please Input New Domain"
exit 1
fi
#Input To Domain
cat > /etc/v2ray/domain << END
$domainbaru
END
systemctl stop v2ray
systemctl stop v2ray@none
/root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/v2ray/v2ray.crt --keypath /etc/v2ray/v2ray.key --ecc
systemctl start v2ray
systemctl start v2ray@none
echo Done
sleep 0.5
clear 
neofetch