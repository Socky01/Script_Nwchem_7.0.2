# SCRIPT INSTALL NWCHEM 7.0.2 FOR UBUNTU 20.04 LTS

Steps That will be done in this script including:
- Update dan Upgrade Packages
- Install Eesstial Packages to run the script: curl, python3-dev, gfortran, mpi-default-bin, mpi-default-dev ssh.
- Make a download folder for the .DEB file
- Install Nwchem 7.0.2
- __OPTIONAL TEST H2O USING SCF__ --> __ON PROGRESS__

How to run script
-----------------
## Method #1 - Automatic Install + OPTIONAL Run H2O Single point SCF energy
1. Install Git
```
sudo apt install git
```
2. Clone Repo
```
git clone https://github.com/Socky01/Script_Nwchem_7.0.2.git
```
3. Move to directory Script_Nwchem_7.0.2
```
cd Script_Nwchem_7.0.2
```
4. Make script.sh executeable
```
chmod +x script.sh
```
5. Run script.sh
```
./script.sh
```
## Method #2 - Manually Making Script.sh
1. Make script.sh
```
nano script.sh
```
2. Copy and Paste this command script.sh then save
```
#!/bin/sh

# Script Menginstall Nwchem 7.0.2 Ubuntu 20.04 LTS
# ------------------------------------------------
# By Freskha Fauzi

# Update dan Upgrade Packages yang sudah terinstall
sudo apt update && sudo apt upgrade -y

# Install Packages yang perlu digunakan
sudo apt install -y curl wget git htop mlocate python3-dev gfortran  mpi-default-bin mpi-default-dev ssh

# Install Nwchem 7.0.2
# -------------------------------------------------
# Membuat dan Menuju Direktori Baru untuk menyimmpan downloadan Nwchem
mkdir Download_Nwchem
cd $
# Instalasi
curl -LJO https://github.com/nwchemgit/nwchem/releases/download/v7.0.2-release/nwchem-data_7.0.2-1_all.ubuntu_focal.deb
curl -LJO https://github.com/nwchemgit/nwchem/releases/download/v7.0.2-release/nwchem_7.0.2-1_amd64.ubuntu_focal.deb
sudo dpkg -i nwchem*7.0.2*focal*.deb

```
3. Make script.sh Executeable
```
chmod +x script.sh
```
4. Run script.sh
```
./script.sh
```
