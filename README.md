## 设置用户名密码和服务端口

修改3proxy.cfg中的用户名、密码、服务端口

## 下载项目

```
git clone https://github.com/my6889/3proxy.git
```

## 运行服务

### docker-compose
```
docker-compose up -d 
```

### Kubernetes
创建Configmap
```
kubectl apply -f 3proxy-configmap.yml
```

如果用Daemonset部署
```
kubectl apply -f 3proxy-daemonset.yml
```

如果用Deployment部署
```
kubectl apply -f 3proxy-deployment.yml
```



## 默认连接信息

**Socks5端口：** 17777

**HTTP端口：** 16666

**用户名1：** admin

**密码：** yourpassword

**用户名2：** user1

**密码：** yourpassword



## 备注

* 应用于云服务需在安全组或防火墙开放对应端口