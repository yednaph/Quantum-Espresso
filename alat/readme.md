This folder contains information about how to optimize the lattice constant
of Silicon using the **pw** calculation in scf calculation style. It contains the
following files:

**alat.sh** Quantum-Espresso input file embedded in bash script for several scf calculation with changing lattice constants
to the experimental value. You need to make this file executable: the command is `chmod a+x alat.sh`

**run.slurm**  SLURM job submission script. To submit the job, use `sbatch run.slurm` command

**alat.plot** Gnuplot script to render the plot

**spline.plot**  Gnuplot script for fitting cubic spline interpolation.
It internally uses Levenberg–Marquardt algorithm. For more information,
please see https://en.wikipedia.org/wiki/Levenberg%E2%80%93Marquardt_algorithm

**a0.pdf** plot of total energy vs lattice constant a0 of Silicon
