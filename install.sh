#!/bin/bash

#get OS version. 
#Some Recovery versions do not have the same executables as others.
sw_vers | grep 'ProductVersion:' | cut -f2

diskutil partitionDisk /dev/disk0 2 GPT JHFS+ "Macintosh HD" 100% 
echo "Disk has been re-partitioned."


#local asr
asr restore -source Desktop/ModularSystem.dmg -target
/Volumes/Macintosh\ HD/ -erase -noprompt -noverify

#network asr
asr restore -source http://www.pretendco.com/deployment/
ModularSystem.dmg -target /Volumes/Macintosh\ HD/ -erase -noprompt -noverify


# Apply Restore image with asr
echo "Restore the Restore with ASR"
/usr/sbin/asr restore -source
/Volumes/Data/Packages/Restore_Image_Leopard.dmg -target /Volumes/Restore
-erase -noprompt -noverify
