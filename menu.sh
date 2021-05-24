#!/bin/bash
clear
#!/bin/bash
cat /usr/bin/bannermenu | lolcat
echo -e "                  ===================================================="| lolcat
echo -e "                                                   "| lolcat
echo -e "            AutoScript By VPNinjector.com" | lolcat
echo -e "                                                   "| lolcat
echo -e "            [1] Vmess/Vless/Trojan" | lolcat
echo -e "            [2] Shadowsocks/ShadowsocksR" | lolcat
echo -e "            [3] Wireguard" | lolcat
echo -e "            [4] Update Script" | lolcat
echo -e "            [x] Exit" | lolcat
echo -e "                                                   "| lolcat
read -p "      Select From Options [1-4 or x] :  " menu
echo -e "                                                   "| lolcat
echo -e "[*][*][*]======================================[*][*][*]" | lolcat
clear
case $menu in
1)
vvt
;;
2)
shadowsocks
;;
3)
wireguard
;;
4)
update
;;
x)
clear
exit
echo "Please enter an correct number"
;;
esac