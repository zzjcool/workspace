# 工作镜像

支持的环境：

1. ssh
2. nano
3. curl
4. wget
5. go
6. git
7. ssh
8. unzip
9. make
10. gcc
11. g++
12. zsh

## 启动

为了方便启动，制作了docker-compose，在当前目录下执行

```shell
docker-compose up -d
```

可以替换docker-compose.yml中的挂载目录为你的目录。

## SSH 登陆

默认ssh使用2222端口
用户名:root
密码为:root

初次使用请用`passwd`命令更换密码
