GRUB2EFI v2.02 Beta 3
Complied by the_R4K_  |  Modded by RedGreenBlue123
For NOKIA Lumia Icon / 930
-------------------------
Disclaimer:
Your warranty is now void. I am not responsible for bricked devices, dead SD cards, thermonuclear war, or you getting fired because the alarm app failed. Please do some research if you have any concerns about features included in this ROM before flashing it! YOU are choosing to make these modifications, and if you point the finger at me for messing up your device, I will laugh at you.
-------------------------
Features:
- Scroll loop
- Function of volUp to select

Requirement:
- Bootloader unlocked Lumia Icon/930
- Windows Computer
- USB Cable
- A few brain cells (VERY IMPORTANT)
-------------------------
First, you must PLUG YOUR PHONE IN to the computer

To Install GRUB2:
1) Boot into Mass Storage Mode
2) Copy files from archive to MainOS root
3) Run patch_bcd.bat as ADMINISTRATOR!!!

To Use GRUB2:
1) Reboot your phone
2) At the Windows Boot Manager menu:
  A)Do nothing to boot normaly
  B)Press volUp to boot GRUB2
3) In GRUB2:
  A)Navigate by volDown
  B)Select by volUp

To Remove GRUB2:
1) Copy remove_grub.bat and restore_bcd.bat to MainOS (If you deleted them from MainOS)
2) Run restore_bcd as ADMINISTRATOR!!!
3) Run remove_grub.bat as ADMINISTRATOR!!!
-------------------------
Q&A:

Q: Is it safe?
A: Yes it is really safe if you didn't do anything different than the instruction, no hard brick.

Q: Can I install this without computer?
A: you can install this directly on your phone if you have bcdedit.exe on installed it. (NOT TESTED. TRY AT YOUR OWN RISK!)

Q: Can this GRUB2 boots any Android and Linux?
A: No with default UEFI. You must use BootShim and an custom UEFI Firmware to boot Linux.

Q: Can you build Android?
A: N/A because I'm a newbie to porting ROMs.

Q: Can I use this grub for other Lumias?
A: Yes but the partition layout is different. You need to edit grub.cfg first.
-------------------------
Use my initrd here if you plan to build Android (Android will not boot without bootshim):
https://github.com/RedGreenBlue09/Initrd-ARMv7
