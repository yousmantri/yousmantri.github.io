下载官方软件

```bash
bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)
```

服务器的配置

/usr/local/etc/v2ray/config.json

```javascript
{
  "inbounds": [{
    "port": 10406, // 服务器监听端口，必须和上面的一样
    "protocol": "vmess",
    "settings": {
      "clients": [{ "id": "b831381d-6324-4d53-ad4f-8cda48b30811" }]
    }
  }],
  "outbounds": [{
    "protocol": "freedom",
    "settings": {}
  }]
}
```



关闭防火墙

ufw disable



启动服务器

service v2ray restart



配置客户端
