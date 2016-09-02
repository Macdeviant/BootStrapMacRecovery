# BootStrapMacRecovery
Attempting to BootStrap the standard Mac Recovery partition to restore a custom Mac DMG via the Internet, hosted on a web/ftp server to the Macintosh HD using (hopefully) a single command so easy that even any Windows tech could do it!
<br>
Something of a custom "Internet Recovery" application/script? as easy to run as the mySQL install found at http://www.macminivault.com/mysql-yosemite/ using a small bash command like they have:<br>
bash <(curl -Ls http://git.io/eUx7rg)
bash <(sftp
<br>

General Notes:<br>
I do not want to rely on the "Macintosh HD" for executables as this may be named something different and may very well be corrupt or empty.<br>
I want as little server side modifications as possible.<br>
Image.DMG hosted on an FTP server, http, sftp?<br>
If I can get a script from here (github) onto the recovery partition to download wget or curl, I am set.<br>
<br>
Recovery notes:<br>
no curl in recovery<br>
no wget in recovery<br>
no ftp in recovery (10.10.3 anyway)<br>
ssh yes<br>
*sftp yes<br>
nfs yes<br>

/sbin contains:<br>
mount_ftp<br>
mount_smbfs < broken due to no supporting libs (SMBClient)<br>
mount_webdav<br>
mount_afp<br>
mount_nfs<br>



##### NFS seems to be the go.
mkdir /Volumes/nfs
mount_nfs 10.x.y.98:/Volumes/Data/nfs /Volumes/nfs
bash command
