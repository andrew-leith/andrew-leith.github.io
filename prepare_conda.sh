#!/bin/bash

wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh

mv Miniconda2-latest-Linux-x86_64.sh ~/scratch/

chmod 755 ~/scratch/Miniconda2-latest-Linux-x86_64.sh

~/scratch/Miniconda2-latest-Linux-x86_64.sh -b -p ~/scratch/miniconda

echo 'export PATH=~/scratch/miniconda/bin:$PATH' >> ~/.bash_profile

source ~/.bash_profile

conda config --append channels r
conda config --append channels bioconda
conda config --append channels conda-forge

conda config --prepend channels compbiocore

conda create -n myenv -c r r-base=3.3.2 -y

echo 'source activate myenv' >> ~/.bash_profile

source ~/.bash_profile

rm ~/scratch/Miniconda2-latest-Linux-x86_64.sh