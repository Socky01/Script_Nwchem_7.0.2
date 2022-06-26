# INSTALL NWCHEM 7.0.2 FOR UBUNTU 20.04 LTS USING SCRIPT

Steps that will be done in this script including:
- Update and upgrade packages
- Install requried packages to run the script: curl, python3-dev, gfortran, mpi-default-bin, mpi-default-dev ssh.
- Make a download folder for the .DEB file
- Install Nwchem 7.0.2

-----------------
## Installing Nwchem 7.0.2
### Method #1 - Using Git Clone
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
2. Copy and Paste this command to script.sh
```
#!/bin/sh

# Script To Install NwChem 7.0.2 For Ubuntu 20.04 LTS
# ------------------------------------------------
# By Socky

# Update and Upgade Packages
sudo apt update && sudo apt upgrade -y

# Install Required Packages
sudo apt install -y curl python3-dev gfortran  mpi-default-bin mpi-default-dev ssh

# Install Nwchem 7.0.2
# -------------------------------------------------
# Make and Go to new Directory for saving .DEB file
mkdir Download_Nwchem
cd $
# Installation Command
curl -LJO https://github.com/nwchemgit/nwchem/releases/download/v7.0.2-release/nwchem-data_7.0.2-1_all.ubuntu_focal.deb
curl -LJO https://github.com/nwchemgit/nwchem/releases/download/v7.0.2-release/nwchem_7.0.2-1_amd64.ubuntu_focal.deb
sudo dpkg -i nwchem*7.0.2*focal*.deb
```
3. Save and Exit
```
ctrl + o
enter
ctrl + x
```
4. Make script.sh Executeable
```
chmod +x script.sh
```
5. Run script.sh
```
./script.sh
```

## Testing Calculating H2O SCF calculation and geometry optimization in a 6-31g basis
-------------------
### STEPS
1. Make test_h2o directory
```
mkdir test_h2o
```
2. Go to test_h2o directory
```
cd test_h2o
```
3. Make h2o.nw file
```
nano h2o.nw
```
4. Copy and Paste to the input file:
```
 start h2o 
 title "Water in 6-31g basis set" 

 geometry units au  
   O      0.00000000    0.00000000    0.00000000  
   H      0.00000000    1.43042809   -1.10715266  
   H      0.00000000   -1.43042809   -1.10715266 
 end  
 basis  
   H library 6-31g  
   O library 6-31g  
 end
 task scf
```
5. Save and Quit from Editing Input file
```
ctrl + o
enter
ctrl + x
```
6. Run the nwchem by using command:
```
nwchem h2o.nw >& h2o.out &
```
### NOTES
-------------------
1. To check if the calculation is still running, use command:
```
ps
```
if the calculation is finished, the indicator:
```
[1]+  Done nwchem h2o.nw &> h2o.out
```
2. To open the input file we can use command:
```
nano h2o.out
```
3. Running nwchem using command, will only utilize 1 core of the CPU :
```
nwchem h2o.nw >& h2o.out &
```
For more advanced command we can use:
```
setsid mpirun -np x nwchem h2o.nw >& h2o.out &
```
where x = number of processor that will be used during calculation.
To check number of processor available we can use command:
```
lscpu
```
