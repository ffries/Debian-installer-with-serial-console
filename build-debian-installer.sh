## install prerequisites
sudo apt-get update
sudo apt-get install -y simple-cdd git xorriso

# Remove files from previous run 
rm -fr tmp; 
rm -fr images; 

# Build installer
build-simple-cdd --conf profiles/serial-console.conf --dist stretch


