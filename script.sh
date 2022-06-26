#!/bin/sh

# Script To Install NwChem 7.0.2 For Ubuntu 20.04 LTS
# ------------------------------------------------
# By Socky

# Update and Upgade Packages
sudo apt update && sudo apt upgrade -y

# Install Required Packages
sudo apt install -y curl wget git htop mlocate python3-dev gfortran  mpi-default-bin mpi-default-dev ssh

# Install Nwchem 7.0.2
# -------------------------------------------------
# Membuat dan Menuju Direktori Baru untuk menyimmpan downloadan Nwchem
# Make and Go to new Directory for saving .DEB file
mkdir Download_Nwchem
cd $
# Installation Command
curl -LJO https://github.com/nwchemgit/nwchem/releases/download/v7.0.2-release/nwchem-data_7.0.2-1_all.ubuntu_focal.deb
curl -LJO https://github.com/nwchemgit/nwchem/releases/download/v7.0.2-release/nwchem_7.0.2-1_amd64.ubuntu_focal.deb
sudo dpkg -i nwchem*7.0.2*focal*.deb
