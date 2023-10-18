#!/bin/bash

cp ../TOPO/plumed.dat .
gmx_mpi grompp -f TOPO/md.mdp -c TOPO/C7eq.gro -p TOPO/topol.top -o topol.tpr -maxwarn 2
gmx_mpi mdrun -deffnm topol -v -g --plumed plumed.dat -ntomp 1
