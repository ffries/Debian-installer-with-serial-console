#/bin/sh

# Install prerequisites
#
# You should be running the same flavor as the installer you are producing.
# Example, an installer for Debian Stretch can only produced on a Strech machine.

sudo apt-get update
sudo apt-get install -y simple-cdd git xorriso

# Remove files from previous run 
rm -fr tmp; 
rm -fr images; 

# Build installer
build-simple-cdd --conf profiles/serial-console.conf --dist stretch

# Installer is in Images folder