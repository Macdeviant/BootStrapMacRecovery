# BootStrapMacRecovery
Attempting to BootStrap the standard Mac Recovery partition to restore a custom Mac DMG via the Internet, hosted on a web/ftp server to the Macintosh HD using (hopefully) a single command so easy that even any Windows tech could do it!
<b>
Something of a custom "Internet Recovery" application/script? as easy to run as the mySQL install found at http://www.macminivault.com/mysql-yosemite/ using a small command like they have:<b>
bash <(curl -Ls http://git.io/eUx7rg)
<b>

General Notes:<b>
I do not want to rely on the "Macintosh HD" for executables as this may be named something different and may very well be corrupt or empty.<b>
I want as little server side modifications as possible.<b>
Image.DMG on an FTP server, http, sftp?<b>
If I can get a script from here (github) onto the recovery partition to download wget or curl, I am set.<b>
<b>
Recovery notes:<b>
no curl in recovery<b>
no wget in recovery<b>
ftp yes<b><b>
ssh yes<b>
sftp yes<b>
nts yes<b>

/sbin contains:<b>
mount_ftp<b>
mount_smbfs < broken due to no supporting libs (SMBClient)<b>
mount_webdav<b>
mount_afp<b>
mount_nfs<b>
