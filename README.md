# 工作镜像

环境基于debian11

支持的环境：

1. ssh
2. docker
3. iptables
4. nano
5. curl
6. wget
7. go
8. git
9. ssh
10. unzip
11. make
12. gcc
13. g++
14. zsh
15. maven
16. java8
17. java11

## 启动

为了方便启动，制作了docker-compose，在当前目录下执行

```shell
docker-compose up -d
```

可以替换docker-compose.yml中的挂载目录为你的目录。

## SSH 登陆

默认ssh使用36000端口
用户名:root
密码为:root

初次使用请用`passwd`命令更换密码

## docker

如果需要支持docker，那么需要以特权模式运行容器
