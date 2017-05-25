# APT Repository

A Docker container that hosts a simple APT repository over HTTP using nginx.


## Packages

* [anton-johansson/ldap-password-reset-service](https://github.com/anton-johansson/ldap-password-reset-service)


## Add a new package

```shell
cd ~/projects/server/apt-repository/repo/dists/stable/main/binary-all
mkdir name-of-package
cp location-of-package/package.deb name-of-package/
dpkg-sig -k ??? --sign builder name-of-package/package.deb
apt-ftparchive -c ../../../apt.conf packages . > Packages
gzip -c Packages > Packages.gz
cd ~/projects/server/apt-repository/repo/dists/stable
apt-ftparchive release . > Release
gpg -u ??? --clearsign -o InRelease Release
gpg -u ??? -abs -o Release.gpg Release
```
