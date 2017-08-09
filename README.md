# Unofficial Debian-installer-with-serial-console
Builds an unofficial Debian Strech installer with serial console enabled by default on /dev/ttyS0, speed 115200. No need to type "H" during boot or to modify Grub loader. Compatible with a vast number of computers, from PC Engines APU/ALIX to Supermicro computers. Build your own installer or download one. Available for x86, x64 and soon arm. 

Debian-serial-console is a wrapper around build-simple-cdd scrpit and Debian preseed configuration.

Before installing, you may read Debian installer documentation:
https://d-i.debian.org/manual/en.i386/apa.html

WARNING:
This project is NOT an official Debian installer and is NOT supported by the Debian community. It allows to build a generic Debian GNU/Linux installer with serial console enabled by default. It is yet an experimental tool meant to study inclusion in Debian of an installer with full serial-console support. Use with caution at your own risk.

Using the Official Debian installer for a serial console installation is still possible:
* Follow Debian guidelines to make a CD or USB key, and press "H" on boot to access help.
* Press F10 or F12 hoping this does not interfere with your running environment.
* Upon reboot, you will need to modify /etc/defaut/grub to enable serial console. 

If the Debian official installer does not suit you, please use our script to create an unofficial Debian installer with serial console:

# Supported computers
No need for a complex BIOS or IPMI to have serial console redirection. Your computer ONLY needs a serial port. This is the case of most servers and small appliances, like the Pc Engines APU 1/2/3 series and Alix series.

This installer has been tested on:
* Pc Engines APU 1c (USB stick / CD-ROM / TFT boot)
* Supermicro server (USB stick / CD-ROM / TFT boot)

This unofficial installer is very minimal to support most needs.
It does not include custom packages, i.e. IPMI for Supermicro or LED support for Pc Engines APU.
After first boot, just install the required packages.

Please report success or questions opening a support issue on Github:
https://github.com/ffries/Debian-installer-with-serial-console/issues

# Serial console
By default, serial console is set to:
/dev/ttyS0 115200

Modify /profiles/serial-console.conf to enable an alternative serial port and/or speed.

# Debian architectures
Available in two architectures:
* amd64 (64 bit architecture)
* i386 (32 bit architecture)

Builds an amd64 installer by defaut. Modify /profiles/serial-console.conf to enable i386.
An unofficial installer for i386 can be build using an amd64 host and the converse is also true.

The i386 installer is slightly different and needs more testing.
Under ALIX 2D13, it is required to use i386 and a CD-ROM, as booting from USB stick is not supported.

# Debian flavors
Built for Debian latest release with security fixes:
Debian 9.1 (Stretch) 

# Firmwares
The installer includes free and non-free firmware allowing to detect network and wireless cards:
* firmware-atheros
* firmware-bnx2
* firmware-bnx2x
* firmware-brcm80211
* firmware-cavium
* firmware-intelwimax
* firmware-iwlwifi
* firmware-libertas
* firmware-linux
* firmware-misc-nonfree
* firmware-myricom
* firmware-netxen
* firmware-qlogic
* firmware-realtek
* firmware-ti-connectivity
* firmware-zd1211

# Running the script

Use a Debian Strech host for building. Building under Debian testing or Debian sid may result in an error.

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

Loading components:

	lqqqqqqqqqqqqqqqqqqqqu Loading additional components tqqqqqqqqqqqqqqqqqqqqk
	x                                                                         x
	x                                   18%                                   x
	x                                                                         x
	x Retrieving jfsutils-udeb                                                x
	x                                                                         x
	mqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqj

Network should be autodetected if your network card is supported by Debian installer:

	lqqqqqqqqqqqqqqu Detecting link on enp1s0; please wait... tqqqqqqqqqqqqqqqk
	x                                                                         x
	x                                   58%                                   x
	x                                                                         x
	x                                                                         x
	x                                                                         x
	x     <Cancel>                                                            x
	x                                                                         x
	mqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqj

	CTRL-A Z for help | 115200 8N1 | NOR | Minicom 2.7 | VT102 | Connecté 0:0 | ttyUSB0                                                                                                                               

The keyboard seems to be auto-detected by installer. please check '[ ] Show password' to verify that your keyboard is well-detected.

	lqqqqqqqqqqqqqqqqu [!!] Set up users and passwords tqqqqqqqqqqqqqqqqqk
	x                                                                    x
	x Please enter the same root password again to verify that you have  x
	x typed it correctly.                                                x
	x                                                                    x
	x Re-enter password to verify:                                       x
	x                                                                    x
	x azerty____________________________________________________________ x
	x                                                                    x
	x [*] Show Password in Clear                                         x
	x                                                                    x
	x     <Go Back>                                       <Continue>     x
	x                                                                    x
	mqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqj

Configure NTP clock:

	lqqqqqqqqqqqqqqqqqqqqqqqu [!] Configure the clock tqqqqqqqqqqqqqqqqqqqqqqqk
	x                                                                         x
	x If the desired time zone is not listed, then please go back to the      x
	x step "Choose language" and select a country that uses the desired       x
	x time zone (the country where you live or are located).                  x
	x                                                                         x
	x Select your time zone:                                                  x
	x                                                                         x
	x                             Eastern                                     x
	x                             Central                                     x
	x                             Mountain                                    x
	x                             Pacific                                     x
	x                             Alaska                                      x
	x                             Hawaii                                      x
	x                             Arizona                                     x
	x                             East Indiana                                x
	x                             Samoa                                       x
	x                                                                         x
	x     <Go Back>                                                           x
	x                                                                         x
	mqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqj

	<Tab> moves; <Space> selects; <Enter> activates buttons


You have access to Debian disc and partitioning utilities, including lvm, RAID and crypto setup. 

	lqqqqqqqqqqqqqqqqqqqqqqqqu [!!] Partition disks tqqqqqqqqqqqqqqqqqqqqqqqqqk
	x                                                                         x
	x The installer can guide you through partitioning a disk (using          x
	x different standard schemes) or, if you prefer, you can do it            x
	x manually. With guided partitioning you will still have a chance later   x
	x to review and customise the results.                                    x
	x                                                                         x
	x If you choose guided partitioning for an entire disk, you will next     x
	x be asked which disk should be used.                                     x
	x                                                                         x
	x Partitioning method:                                                    x
	x                                                                         x
	x          Guided - use entire disk                                       x
	x          Guided - use entire disk and set up LVM                        x
	x          Guided - use entire disk and set up encrypted LVM              x
	x          Manual                                                         x
	x                                                                         x
	x     <Go Back>                                                           x
	x                                                                         x
	mqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqj

	<Tab> moves; <Space> selects; <Enter> activates buttons

Installing base system:

	lqqqqqqqqqqqqqqqqqqqqqu Installing the base system tqqqqqqqqqqqqqqqqqqqqqqk
	x                                                                         x
	x                                    6%                                   x
	x                                                                         x
	x Validating libselinux1...                                               x
	x                                                                         x
	mqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqj

Choose an installation mirror:

	lqqqqqqqqqqqqqqqqqqu [!] Configure the package manager tqqqqqqqqqqqqqqqqqqk
	x                                                                         x
	x The goal is to find a mirror of the Debian archive that is close to     x
	x you on the network -- be aware that nearby countries, or even your      x
	x own, may not be the best choice.                                        x
	x                                                                         x
	x Debian archive mirror country:                                          x
	x                                                                         x
	x                      Colombia                                           x
	x                      Costa Rica                  a                      x
	x                      Croatia                                            x
	x                      Czechia                     a                      x
	x                      Denmark                     a                      x
	x                      El Salvador                 a                      x
	x                      Estonia                     a                      x
	x                      Finland                     a                      x
	x                      France                                             x
	x                                                                         x
	x     <Go Back>                                                           x
	x                                                                         x
	mqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqj

	<Tab> moves; <Space> selects; <Enter> activates buttons

Choose to report or not-report your software activities to Debian:

	lqqqqqqqqqqqqqqqqu [!] Configuring popularity-contest tqqqqqqqqqqqqqqqqqk
	x                                                                       x
	x The system may anonymously supply the distribution developers with    x
	x statistics about the most used packages on this system. This          x
	x information influences decisions such as which packages should go on  x
	x the first distribution CD.                                            x
	lx                                                                      x
	xx If you choose to participate, the automatic submission script will   x
	xx run once every week, sending statistics to the distribution          x
	xx developers. The collected statistics can be viewed on                x
	xx http://popcon.debian.org/.                                           x
	xx                                                                      x
	mx This choice can be later modified by running "dpkg-reconfigure       x
	x popularity-contest".                                                  x
	x                                                                       x
	x Participate in the package usage survey?                              x
	x                                                                       x
	x     <Yes>                                                    <No>     x
	x                                                                       x
	mqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqj

	<Tab> moves; <Space> selects; <Enter> activates buttons

Install Grub bootloader:

	lqqqqqqqqqqqu [!] Install the GRUB boot loader on a hard disk tqqqqqqqqqqqk
	x                                                                         x
	x You need to make the newly installed system bootable, by installing     x
	x the GRUB boot loader on a bootable device. The usual way to do this     x
	x is to install GRUB on the master boot record of your first hard         x
	x drive. If you prefer, you can install GRUB elsewhere on the drive, or   x
	x to another drive, or even to a floppy.                                  x
	x                                                                         x
	x Device for boot loader installation:                                    x
	x                                                                         x
	x        Enter device manually                                            x
	x        /dev/sda  (ata-SATA_SSD_FF1A07491C0800678607)                    x
	x        /dev/sdb  (usb-Multiple_Card_Reader_058F63666485-0:0)            x
	x                                                                         x
	x     <Go Back>                                                           x
	x                                                                         x
	mqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqj

	<Tab> moves; <Space> selects; <Enter> activates buttons

Reboot!

	The system is going to reboot.

WARNING: at present, it reboots on the installer. So remove the installation media as quickly as possible.

# Upon first boot

This is a very minimal installation. Make sure your are running Debian stable:

	$ cat /etc/apt/sources.list

	# deb cdrom:[Debian GNU/Linux 9.1 _Stretch_ - Unofficial amd64 CD Binary-1 20170809-07:45]/ stretch main non-free

	#deb cdrom:[Debian GNU/Linux 9.1 _Stretch_ - Unofficial amd64 CD Binary-1 20170809-07:45]/ stretch main non-free

	deb http://ftp.fr.debian.org/debian/ stretch main non-free contrib
	deb-src http://ftp.fr.debian.org/debian/ stretch main non-free contrib

	deb http://security.debian.org/debian-security stretch/updates main contrib non-free
	deb-src http://security.debian.org/debian-security stretch/updates main contrib non-free

	# stretch-updates, previously known as 'volatile'
	deb http://ftp.fr.debian.org/debian/ stretch-updates main contrib non-free
	deb-src http://ftp.fr.debian.org/debian/ stretch-updates main contrib non-free

Debian repositories should be the ones selected during installation. If you had network access during installation, it should be already up-to-date.

Now, please customize to your needs.

Reconfigure your locales:

	$ dpkg-reconfigure locales

Install OpenSSH server if you need SSH remote access:
	
	$ apt-get update
	$ apt-get install openssh-server

# Improvements/Issues

* Allow manual network configuration.
* Provide all locales like in a normal installer.
* Make sure that keyboard is well-detected. My keyboard is French. Can you verify with your own keyboard?
* Add more options to the script.
* Verify if Intel drivers can be added to the installer.
* Of course, a more suitable solution would be to modify Debian installer directly.
* Contact Debian team and discuss an official Debian installer with serial console, available from debian.org, with their own tools (stock installer).

# Credits
Credits go the GNU/linux Debian project, Debian installer and Debian simple-cdd tool. 
This project is also inspired by https://github.com/ssinyagin/pcengines-apu-debian-cd, which provides an automated installation for PC Engines APU.

# Future plans
Serial console is very common, from small embedded devices to large servers. No full-featured serial installer is available in Debian. On the converse, video mode is now set to VGA with graphics and Debian installer returns an error on serial console. Therefore, we would like to explore the idea of adding a serial console target in the main Gnu/Linux Debian installer. When this is done, we will remove this project.
