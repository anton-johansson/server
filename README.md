# Server

[![Build Status](https://img.shields.io/travis/anton-johansson/server/master.svg)](https://travis-ci.org/anton-johansson/server)
[![License](https://img.shields.io/hexpm/l/plug.svg?maxAge=2592000)](https://raw.githubusercontent.com/anton-johansson/server/master/LICENSE)

Docker images and scripts for setting up the server.


## Running

```shell
$ alias hostip="echo '<docker ip to host>'"
$ docker run --detach --name apt-repository-01 --publish 10101:80 anton-johansson/apt-repository
$ docker run --detach --name apt-repository-02 --publish 10102:80 anton-johansson/apt-repository
$ docker run --detach --name web-proxy --publish 80:80 --add-host=host:$(hostip) anton-johansson/web-proxy
```

## Building

```shell
$ docker build --tag anton-johansson/apt-repository apt-repository/
$ docker build --tag anton-johansson/web-proxy web-proxy/
```

## Configurations

#### IP tables

```shell
# Exceptions to default policy:
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -p tcp --dport 80 -j ACCEPT

# Set default policies:
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT
```


## License

Apache License © [Anton Johansson](https://github.com/anton-johansson)
