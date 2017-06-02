# APT Repository

A Docker container that hosts a simple APT repository over HTTP using nginx.


## Packages

* [anton-johansson/ldap-password-reset-service](https://github.com/anton-johansson/ldap-password-reset-service)


## Add a new package

```shell
cd ~/projects/server/apt-repository/repo
cp location-of-package/package.deb dists/stable/main/binary-all/name-of-package/
dpkg-sig -k ??? --sign builder dists/stable/main/binary-all/name-of-package/package.deb
apt-ftparchive -c ../apt.conf packages dists/stable/main/binary-all > dists/stable/main/binary-all/Packages
gzip -c dists/stable/main/binary-all/Packages dists/stable/main/binary-all/Packages.gz
apt-ftparchive release dists/stable > dists/stable/Release
gpg -u ??? --clearsign -o dists/stable/InRelease dists/stable/Release
gpg -u ??? -abs -o dists/stable/Release.gpg dists/stable/Release
```
