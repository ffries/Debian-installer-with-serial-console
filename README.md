# Debian-installer-with-serial-console
Debian GNU/Linux installer with serial console on /dev/ttyS0 with 115200. No need to type "H" during boot or to modify Grub loader. Compatible with a vast number of computers, from PC Engines APU to Supermicro computers. Build your own installer or download one. Available for x86, x64 and soon arm. 

Debian-serial-console is a wrapper around build-simple-cdd and Debian preseed configuration.

It allows to build a generic Debian GNU/Linux installer:

# Serial console
/dev/ttySO 115200

# Debian architectures
*i386 (32 bit)
*amd64 (64 bit)

# Debian flavors
Debian 9.1 (Stretch) with security fixes

# Running the script
	git checkout Debian-installer-with-serial-console 
	cd Debian-installer-with-serial-console 

You may need to customize profiles/serial-console.conf
	sh ./build-debian-installer.sh


# Credits
Credits go the Debian project, Debian installer and Debian simple-cdd tool. 
This project is also inspired by https://github.com/ssinyagin/pcengines-apu-debian-cd, which provides and automated installation for PC Engines APU.