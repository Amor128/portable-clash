# Win 下安装使用 Clash

1、下载安装 Clash，位置：https://github.com/Dreamacro/clash

2、下载 proxy rule

3、下载可视化管理工具，这里使用 yacd，位置：https://github.com/haishanh/yacd

4、配置必须配置，参考：https://dreamacro.github.io/clash/configuration/configuration-reference.html

如果使用可视化管理工具，则最好配置 external-ui 和 secret

5、启动 clash：

```bash
clash -f config.yaml
```

6、注册为服务

使用 nssm 工具完成（可能对 win11 不太支持），解压后使用：

```bash
nssm install service-name
```

