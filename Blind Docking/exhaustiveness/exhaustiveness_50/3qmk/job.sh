#!/bin/bash -l

#PBS -N 3qmk

#PBS -l walltime=333:00:00

#PBS -l select=1:ncpus=40:mpiprocs=40:mem=1006gb

#PBS -j oe

 

cd $PBS_O_WORKDIR

./GlycoTorchVina --receptor 3qmk_receptor.pdbqt --ligand ligand.pdbqt --config config.conf --chi_coeff 2 --chi_cutoff 1 --cpu 40 --out 3qmk_out.pdbqt
