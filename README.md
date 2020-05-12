## 设置用户名密码和服务端口

修改3proxy.cfg

## 构建镜像

```
docker build -t my6889/3proxy .
```

## 运行服务

```
docker run -ti -d -p 7777:7777 \
       -v /var/log/3proxy:/var/log/3proxy \
       --restart=always my6889/3proxy
```

## 连接信息

**Socks5端口：** 7777

**用户名1：** admin

**密码：** yourpassword

**用户名2：** user1

**密码：** yourpassword



## 备注

* 应用于云服务需在安全组开放7777端口