:: Compile the .asm file with nasm, download nasm.
nasm -f bin -o boot.bin boot.asm

:: This command should every windows computer have, it compiles the file to the image.
copy /b boot.bin boot.img

:: DELETE THIS LINE IF YOU DON'T WANNA RUN IT DIRECTLY, it's a virtual box, you must also download it.
:: I recommend this vm if you actually wanna develop.
qemu-system-i386 boot.img

:: If you wanna make it bootable from the computer bios, use this command, but NOT in this .bat file, just paste it in the command line (in this dir):
:: mkisofs -o boot.iso -b boot.img -no-emul-boot -boot-load-size 4 -boot-info-table .


:: Bam!
:: You have now officially an os, with just 4 commands and some assembly.