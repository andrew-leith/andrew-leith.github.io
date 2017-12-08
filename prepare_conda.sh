#!/bin/bash

wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh

mv Miniconda2-latest-Linux-x86_64.sh ~/scratch/

chmod 755 ~/scratch/Miniconda2-latest-Linux-x86_64.sh

~/scratch/Miniconda2-latest-Linux-x86_64.sh -b -p ~/scratch/miniconda

echo 'export PATH=~/scratch/miniconda/bin:$PATH' >> ~/.bash_profile

echo 'source activate myenv' >> ~/.bash_profile

conda create -n myenv -c r r-base=3.3.2

