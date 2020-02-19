@ECHO OFF
SET EFIESP="%~d0\EFIESP\"

del /S /F %EFIESP%\boot\grub\
del /S /F %EFIESP%\EFI\grub\
del /F %EFIESP%\boot.efi
@del /F %~d0\patch_bcd.bat
@del /F %~d0\restore_bcd.bat
@del /F %~d0\remove_grub.bat
@del /F %~d0\README.txt

ECHO  
ECHO Removing Grub Done!
pause

