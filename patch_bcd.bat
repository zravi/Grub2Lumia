@ECHO OFF
SET mosDrive=%~d0
SET bcdLoc="%mosDrive%\EFIESP\efi\Microsoft\Boot\BCD"
SET id="{b2d04759-f7de-11e7-aa27-1c3947b79a68}"

bcdedit /store %bcdLoc% /create %id% /d "GRUB2 bootloader" /application "bootapp"
bcdedit /store %bcdLoc% /set %id% "device" "partition=%mosDrive%\efiesp"
bcdedit /store %bcdLoc% /set %id% "path" "\efi\grub\bootarm.efi"
bcdedit /store %bcdLoc% /set %id% "locale" "en-US"
bcdedit /store %bcdLoc% /set %id% "testsigning" yes
bcdedit /store %bcdLoc% /set %id% "isolatedcontext" yes
bcdedit /store %bcdLoc% /set %id% "inherit" "{bootloadersettings}"

bcdedit /store %bcdLoc% /set "{bootmgr}" "nointegritychecks" Yes
bcdedit /store %bcdLoc% /set "{bootmgr}" "testsigning" yes
bcdedit /store %bcdLoc% /set "{bootmgr}" "isolatedcontext" yes
bcdedit /store %bcdLoc% /set "{bootmgr}" "flightsigning" yes
bcdedit /store %bcdLoc% /set "{bootmgr}" "timeout" 3
bcdedit /store %bcdLoc% /set "{bootmgr}" "displaybootmenu" yes
bcdedit /store %bcdLoc% /set "{bootmgr}" "custom:54000001" %id%

bcdedit /store %bcdLoc% /set "{globalsettings}" "nobootuxtext" no
bcdedit /store %bcdLoc% /set "{globalsettings}" "nobootuxprogress" no

ECHO  
ECHO BCD Patching Done!
pause

