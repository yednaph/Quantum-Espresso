#!/bin/bash

# This script calculates +/- 5% lattice constant of given standard lattice constant 

a0=10.263101844 #  lattice constant of Silicon 5.431 Angstrom
for k in {0..20} # 20 is estimated by assuming a step size of 0.005
  do
    percent=`echo " 100*(1.0-(95.0/100+$k*0.005)) " | bc -l`   # Calculation of percentage from +/- 3%
    alat=`echo "$a0 - $a0*$percent/100.0" | bc -l`             # Calculation of lattice constant
    echo " $percent      $alat " > latticedata.dat             # storing lattice data on a file lattice.dat
    echo " $percent      $alat "                               # displaying all lattice data on screen
  done
