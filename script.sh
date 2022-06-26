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

# Opsional - ON PROGRESS
# Melakukan Test Perhitungan H2O menggunakan SCF
# -------------------------------------------------
mkdir test_h2o
mv h2o.nw h2o/
cd $
nwchem h2o.nw >& h2o.out &
