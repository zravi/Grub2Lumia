@ECHO OFF
SET mosDrive=%~d0
SET bcdLoc="%mosDrive%\EFIESP\efi\Microsoft\Boot\BCD"
SET id="{b2d04759-f7de-11e7-aa27-1c3947b79a68}"

bcdedit /delete %id%

bcdedit /store %bcdLoc% /deletevalue "{bootmgr}" "nointegritychecks"
bcdedit /store %bcdLoc% /deletevalue "{bootmgr}" "testsigning"
bcdedit /store %bcdLoc% /deletevalue "{bootmgr}" "isolatedcontext"
bcdedit /store %bcdLoc% /deletevalue "{bootmgr}" "flightsigning"
bcdedit /store %bcdLoc% /deletevalue "{bootmgr}" "timeout"
bcdedit /store %bcdLoc% /deletevalue "{bootmgr}" "displaybootmenu"
bcdedit /store %bcdLoc% /deletevalue "{bootmgr}" "custom:54000001"

ECHO  
ECHO Restoring BCD Done!
pause

