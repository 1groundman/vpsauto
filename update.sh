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
MYIP=$(wget -qO- ifconfig.co);
IZIN=$( curl https://raw.githubusercontent.com/lanundarat87/vpsauto/main/ipvps.conf | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Please Contact Admin"
echo "Telegram t.me/bosok69"
rm -f setup.sh
exit 0
fi
versi=$(cat /home/ver)
if [[ $versi == 1.2 ]]; then
echo "You Have The Latest Version"
exit 0
fi
echo "Start Update"
cd /usr/bin
wget -O menu "https://vpnasian.com/autoscript/menu.sh"
wget -O usernew "https://vpnasian.com/autoscript/usernew.sh"
wget -O trial "https://vpnasian.com/autoscript/trial.sh"
wget -O change-port "https://vpnasian.com/autoscript/change.sh"
wget -O port-ovpn "https://vpnasian.com/autoscript/port-ovpn.sh"
wget -O port-ssl "https://vpnasian.com/autoscript/port-ssl.sh"
wget -O port-wg "https://vpnasian.com/autoscript/port-wg.sh"
wget -O port-tr "https://vpnasian.com/autoscript/port-tr.sh"
wget -O port-sstp "https://vpnasian.com/autoscript/port-sstp.sh"
wget -O port-squid "https://vpnasian.com/autoscript/port-squid.sh"
wget -O port-ws "https://vpnasian.com/autoscript/port-ws.sh"
wget -O port-vless "https://vpnasian.com/autoscript/port-vless.sh"
wget -O wbmn "https://vpnasian.com/autoscript/webmin.sh"
wget -O xp "https://vpnasian.com/autoscript/xp.sh"
wget -O limit-speed "https://vpnasian.com/autoscript/limit-speed.sh"
wget -O add-sstp "https://vpnasian.com/autoscript/add-sstp.sh"
wget -O add-ws "https://vpnasian.com/autoscript/add-ws.sh"
wget -O add-vless "https://vpnasian.com/autoscript/add-vless.sh"
wget -O add-tr "https://vpnasian.com/autoscript/add-tr.sh"
chmod +x change-port
chmod +x port-ovpn
chmod +x port-ssl
chmod +x port-wg
chmod +x port-sstp
chmod +x port-tr
chmod +x port-squid
chmod +x port-ws
chmod +x port-vless
chmod +x wbmn
chmod +x xp
chmod +x limit-speed
echo "0 5 * * * root clear-log && reboot" > /etc/crontab
echo "0 0 * * * root xp" > /etc/crontab
cd
echo "1.2" > /home/ver
clear
echo " Fix minor Bugs"
echo " Now You Can Change Port Of Some Services"
echo " Reboot 5 Sec"
sleep 5
rm -f update.sh
reboot
