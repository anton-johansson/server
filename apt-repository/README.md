# APT Repository

A Docker container that hosts a simple APT repository over HTTP using apache.


## Packages

* [anton-johansson/ldap-password-reset-service](https://github.com/anton-johansson/ldap-password-reset-service)


## Add a new package

```shell
cd apt-repository/repo/binary
cp location-of-package/package.deb .
apt-ftparchive packages . > Packages
gzip -c Packages > Packages.gz
apt-ftparchive release . > Release
gpg -k ??? --clearsign -o InRelease Release
gpg -k ??? -abs -o Release.gpg Release
```
