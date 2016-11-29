#!/bin/sh
iptables -F
yum install m2crypto
yum install python-setuptools
easy_install pip
pip install shadowsocks
echo { >>/etc/shadowsocks.json
echo    \"server\":\"0.0.0.0\",>>/etc/shadowsocks.json
echo    \"server_port\":443,>>/etc/shadowsocks.json
echo    \"local_address\": \"127.0.0.1\",>>/etc/shadowsocks.json
echo    \"local_port\":1080,>>/etc/shadowsocks.json
echo    \"password\":\"yousman\",>>/etc/shadowsocks.json
echo    \"timeout\":300,>>/etc/shadowsocks.json
echo    \"method\":\"aes-256-cfb\",>>/etc/shadowsocks.json
echo    \"fast_open\": "false",>>/etc/shadowsocks.json
echo    \"workers\": "1">>/etc/shadowsocks.json
echo }>>/etc/shadowsocks.json
ssserver -c /etc/shadowsocks.json -d start
wget http://fs.d1sm.net/finalspeed/install_fs.sh
chmod +x install_fs.sh
./install_fs.sh 2>&1 | tee install.log
