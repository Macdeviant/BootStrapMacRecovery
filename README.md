# BootStrapMacRecovery
Attempting to BootStrap the standard Mac Recovery partition to restore a custom Mac DMG via the Internet, hosted on a web/ftp server to the Macintosh HD using (hopefully) a single command so easy that even any Windows tech could do it!

Something of a custom "Internet Recovery" application/script? as easy to run as the mySQL install found at http://www.macminivault.com/mysql-yosemite/ using a small command like they have:
bash <(curl -Ls http://git.io/eUx7rg)


General Notes:
I do not want to rely on the "Macintosh HD" for executables as this may be named something different and may very well be corrupt or empty.
I want as little server side modifications as possible.
Image.DMG on an FTP server, http, sftp?
If I can get a script from here (github) onto the recovery partition to download wget or curl, I am set.

Recovery notes:
no curl in recovery
no wget in recovery
ftp yes
ssh yes
sftp yes
nts yes

/sbin contains:
mount_ftp
mount_smbfs < broken due to no supporting libs (SMBClient)
mount_webdav
mount_afp
mount_nfs
