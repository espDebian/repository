rm -f packages-i386.db packages-amd64.db
apt-ftparchive generate -c=aptftp.conf aptgenerate.conf
apt-ftparchive release -captftp.conf dists/cookie > dists/cookie/Release
# gpg -u 4DD39C260DA4137D -bao dists/cookie/Release.gpg dists/cookie/Release
# gpg -u 4DD39C260DA4137D --clear-sign --output dists/cookie/InRelease dists/cookie/Release
