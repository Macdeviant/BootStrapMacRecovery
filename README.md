# BootStrapMacRecovery
Attempting to BootStrap the standard Mac Recovery partition to restore a custom Mac DMG via the Internet, hosted on a web/ftp server to the Macintosh HD using (hopefully) a single command so easy that even any Windows tech could do it!
<br>
Something of a custom "Internet Recovery" application/script? as easy to run as the mySQL install found at http://www.macminivault.com/mysql-yosemite/ using a small command like they have:<br>
bash <(curl -Ls http://git.io/eUx7rg)
<br>

General Notes:<br>
I do not want to rely on the "Macintosh HD" for executables as this may be named something different and may very well be corrupt or empty.<br>
I want as little server side modifications as possible.<br>
Image.DMG on an FTP server, http, sftp?<br>
If I can get a script from here (github) onto the recovery partition to download wget or curl, I am set.<br>
<br>
Recovery notes:<br>
no curl in recovery<br>
no wget in recovery<br>
ftp yes<br>
ssh yes<br>
sftp yes<br>
nts yes<br>

/sbin contains:<br>
mount_ftp<br>
mount_smbfs < broken due to no supporting libs (SMBClient)<br>
mount_webdav<br>
mount_afp<br>
mount_nfs<br>
