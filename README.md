# Server

[![Build Status](https://img.shields.io/travis/anton-johansson/server/master.svg)](https://travis-ci.org/anton-johansson/server)
[![License](https://img.shields.io/hexpm/l/plug.svg?maxAge=2592000)](https://raw.githubusercontent.com/anton-johansson/server/master/LICENSE)

Docker images and scripts for setting up the server.


## Running

```shell
$ docker run --detach --name apt-repository anton-johansson/apt-repository
$ docker run --detach --name web-proxy --link apt-repository --publish 80:80 anton-johansson/web-proxy
```

## Building

```shell
$ docker build --tag apt-repository apt-repository/
$ docker build --tag web-proxy web-proxy/
```


## License

Apache License © [Anton Johansson](https://github.com/anton-johansson)
