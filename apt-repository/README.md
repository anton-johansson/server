# APT Repository

A Docker container that hosts a simple APT repository over HTTP using apache.


## Packages

* [anton-johansson/ldap-password-reset-service](https://github.com/anton-johansson/ldap-password-reset-service)


## Add a new package

```shell
cd apt-repository/repo/binary
cp location-of-package/package.deb .
dpkg-sig -k ??? --sign builder package.deb
apt-ftparchive packages . > Packages
gzip -c Packages > Packages.gz
apt-ftparchive release . > Release
gpg -u ??? --clearsign -o InRelease Release
gpg -u ??? -abs -o Release.gpg Release
```
