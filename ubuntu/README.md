# Ubuntu 下安装使用 Clash

1、下载安装 Clash，位置：https://github.com/Dreamacro/clash，下载安装适合的 release 版本即可

2、下载 proxy rule

3、下载可视化管理工具，这里使用 yacd，位置：https://github.com/haishanh/yacd

4、配置必须配置，参考：https://dreamacro.github.io/clash/configuration/configuration-reference.html

如果使用可视化管理工具，则最好配置 external-ui 和 secret

5、启动 clash：

```bash
clash -f config.yaml
```

6、注册为服务

为服务创建一个脚本：

```bash
#!/bin/bash
/path/to/clash -f /path/to/config.yaml
```

创建Systemd服务单元文件：

```ini
[Unit]
Description=Clash Service

[Service]
ExecStart=/path/to/clash.sh
Restart=always

[Install]
WantedBy=multi-user.target
```

将服务单元文件复制到Systemd服务目录：

```bash
sudo cp myservice.service /etc/systemd/system/
```

激活并且启动服务：

```bash
sudo systemctl enable clash
sudo systemctl start clash
```
