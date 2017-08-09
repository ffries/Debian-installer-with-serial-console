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

	git clone https://github.com/ffries/Debian-installer-with-serial-console.git 

	cd Debian-installer-with-serial-console 

You may need to customize profiles/serial-console.conf

Then build the CD:

	sh ./build-debian-installer.sh

The resulting installer CD is in:
	images/debian-9.1-amd64-CD-1.iso

Burn a CD-ROM or transfer to a USB key.

# Screenshots

The installation under serial console is using only ASCII characters, and thus is very slylish and old-fashioned. Here are a few screenshots from the installer. Nothing new under the sun, as this is a plain Debian installer:

Installation begins automatically:

	lqqqqqqqqqqqqqqqqqqqqqqu [!!] Select your location tqqqqqqqqqqqqqqqqqqqqqqk
	x                                                                         x
  	x The selected location will be used to set your time zone and also for   x
  	x example to help select the system locale. Normally this should be the   x
  	x country where you live.                                                 x
  	x                                                                         x
  	x Listed are locations for: Europe. Use the <Go Back> option to select    x
  	x a different continent or region if your location is not listed.         x
  	x                                                                         x
  	x Country, territory or area:                                             x
  	x                                                                         x
  	x                    Faroe Islands                                        x
  	x                    Finland                                              x
  	x                    France                         a                     x
  	x                    Georgia                        a                     x
  	x                    Germany                        a                     x
  	x                    Gibraltar                                            x
  	x                                                                         x
  	x     <Go Back>                                                           x
  	x                                                                         x
  	mqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqj

  	<Tab> moves; <Space> selects; <Enter> activates buttons

Installer has only English locales, choose whatever, this can be changed after first boot:

  	lqqqqqqqqqqqqqqqqqqqqqqqqu [!] Configure locales tqqqqqqqqqqqqqqqqqqqqqqqqk
  	x                                                                         x
  	x There is no locale defined for the combination of language and          x
	x country you have selected. You can now select your preference from      x
	x the locales available for the selected language. The locale that will   x
	x be used is listed in the second column.                                 x
	x                                                                         x
	x Country to base default locale settings on:                             x
	x                                                                         x
	x                 Nigeria              -  en_NG                           x
	x                 Philippines          -  en_PH.UTF-8  a                  x
	x                 Singapore            -  en_SG.UTF-8  a                  x
	x                 South Africa         -  en_ZA.UTF-8  a                  x
	x                 United Kingdom       -  en_GB.UTF-8  a                  x
	x                 United States        -  en_US.UTF-8                     x
	x                 Zambia               -  en_ZM        a                  x
	x                 Zimbabwe             -  en_ZW.UTF-8                     x
	x                                                                         x
	x     <Go Back>                                                           x
	x                                                                         x
	mqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqj

	<F1> for help; <Tab> moves; <Space> selects; <Enter> activates buttons



# Credits
Credits go the GNU/linux Debian project, Debian installer and Debian simple-cdd tool. 
This project is also inspired by https://github.com/ssinyagin/pcengines-apu-debian-cd, which provides and automated installation for PC Engines APU.

# Future plans
Serial console is very common, from small embedded devices to large servers. No full-featured serial installer is available in Debian. On the converse, video mode is now set to VGA with graphics and Debian installer returns an error on serial console. Therefore, we would like to explore the idea of adding a serial console target in the main Gnu/Linux Debian installer. When this is done, we will remove this project.