# Debian-installer-with-serial-console
Debian GNU/Linux installer with serial console on /dev/ttyS0 with 115200. No need to type "H" during boot or to modify Grub loader. Compatible with a vast number of computers, from PC Engines APU to Supermicro computers. Build your own installer or download one. Available for x86, x64 and soon arm. 

Debian-serial-console is a wrapper around build-simple-cdd and Debian preseed configuration.

It allows to build a generic Debian GNU/Linux installer:

# Serial console
By default, serial console is set to:
/dev/ttyS0 115200

# Debian architectures
Available in two architectures:
* i386 (32 bit)
* amd64 (64 bit)

# Debian flavors
Built for Debian latest release with security fixes:
Debian 9.1 (Stretch) 

# Firmwares
The installer includes free and non-free firmware allowing to detect network and wireless cards:
* firmware-linux
* firmware-brcm80211
* firmware-realtek
* firmware-atheros
* firmware-misc-nonfree
* firmware-ipw2x00
* firmware-iwlwifi

# Running the script
Checkout the project:

	git checkout Debian-installer-with-serial-console 

	cd Debian-installer-with-serial-console 

You may need to customize profiles/serial-console.conf

Then build the CD:

	sh ./build-debian-installer.sh

The resulting installer CD is in images/

# Credits
Credits go the GNU/linux Debian project, Debian installer and Debian simple-cdd tool. 
This project is also inspired by https://github.com/ssinyagin/pcengines-apu-debian-cd, which provides and automated installation for PC Engines APU.
