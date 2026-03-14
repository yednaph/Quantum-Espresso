<b>QE Installation (Linux) Serial installation with Linux gcc and gfortran compilers</b>

<p>Updated versions of <b>gcc</b> and <b>gfortran</b> may be required.</p>
<p>Use <b>synaptic manager</b> and then sudo apt-get upgrade && sudo apt-get update</p>

<b>Installation of discrete fast Fourier library</b>

<p>1. Download FFTW3 discrete fast Fourier library: wget http://www.fftw.org/fftw-3.3.10.tar.gz</p>
<p>2. untar the package to a location where you want to install: tar -zxvf fftw-3.3.10.tar.gz</p>
<p>3. go inside the fftw folder: cd fftw-3.3.10</p>
<p>4. configure the fftw: ./configure</p>
<p>5. make the library: make</p>
<p>6. Now check the system: make check</p>
<p>7. Now install the library to the default location (requires root privilege): sudo make install</p>

<b>Installation of LAPACK BLAS libraries</b>

<p>1. Download the Lapack tar.gz file (the latest version is better):</p>
<p> wget https://github.com/Reference-LAPACK/lapack/archive/refs/tags/v3.10.1.tar.gz</p>
<p>2. untar the downloaded file and copy it to the directory where you like to install: tar -zxvf v3.10.1.tar.gz</p>
<p>3. cd the extracted folder: cd lapack-3.10.1/</p>
<p>4. Copy the make.inc file from the INSTALL folder to the present folder: cp INSTALL/make.inc.gfortran make.inc</p>
<p>5. Now edit this newly created make.inc file: vim make.inc</p>
<p>Now edit the make.inc file, line #77 should be like</p>
<p>BLASLIB = $(TOPSRCDIR)/libblas.a (delete the ref from librefblas.s)</p>
<p>6. Compile the BLAS library: make blaslib</p>
<p>7. Now compile the LAPACK library: make lapacklib</p>
<p>8. copy *.a files to /usr/local/lib location (root access is required): sudo cp *.a /usr/local/lib/</p>

<b>If you want to compile for parallel processing, install openmpi </b>

`sudo apt install --no-install-recommends  libopenmpi-dev  libscalapack-openmpi-dev`
   

  
<b>Installation of Quantum Espresso</b>
<p>1. Download the package: wget https://github.com/QEF/q-e/archive/refs/tags/qe-7.0.tar.gz</p>
</p>Else, you can directly download it from <a href="https://www.quantum-espresso.org/download-page/" target="_blank" rel="noopener noreferrer"> here.</a></p>
<p>2. Untar the package: tar -zxvf qe-7.0.tar.gz</p>
<p>3. Now cd to QE folder: cd q-e-qe-7.0/</p>
<p>4. Configure the QE: ./configure (sometimes an error due to the git package occurs). In that case, install the git package by sudo apt-get install git</p>
<p>Now check for errors (if any), The message below is just fine</p>
<p>The following libraries have been found:</p>

<p>BLAS_LIBS= -lblas</p>
<p>LAPACK_LIBS=-L/usr/local/lib -llapack -lblas</p>
<p>FFT_LIBS= -lfftw3</p>
<p>……</p>
<p>……</p>
<p>……</p>
<p>configure: success</p>

<p>5. make install all</p>
<p>6. Now copy all the executable files to /usr/local/bin: sudo cp *.x /usr/local/bin</p>
<p>It’s done.</p>
