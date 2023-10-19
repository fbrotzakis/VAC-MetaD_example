# VAC-MetaD example

This repository provides with the protocol to optimize collective variables using the VAC-MetaD method, by using alanine dipeptide conformational transition as example. 
The protocol entails
- Perform a MetaD simulation with suboptimal collective variables, shown in MetaD_run folder. The commands to run MetaD are in the run.sh script. By bloting the rbias as afunction of time (rbias_ala2.png) one is able to consider as equilibration the first 500 ps of simulation and therefor reduce the COLVAR file to the COLVAR_500 file.
- Moving to the VAC_MetaD folder, one needs to first install the VAC-MetaD analysis [script](https://github.com/fbrotzakis/PLUMED2_TICA) into plumed. Then, by executing the run.sh script one is able to attain the corresponding eigenvector and eigenvalue files. Plotting the eigenvalue files one is left with the eigval.png file which clearly shows a spectral gap between the first and rest of time dependent eigenvalues, hence the slow degree of freedom corresponds to the first eigenvector, whose time dependent coefficients are plotted in eigv1.png. The coefficients at large times (40ps) (phi,psi,theta)=(-9.095221e-01,+1.625895e-01,-3.825365e-01) are chosen for the linear combination. phi, theta and psi are in order the slow degrees of freedom.
- The linear combination CV=-9.095221e-01*phi +1.625895e-01*psi -3.825365e-01*theta is chosen as CV to bias in the folder VAC_MetaD_run where FES calculations using sum_hills are stored in the FES subfolder



## References

1. McCarty J, Parrinello M. A variational conformational dynamics approach to the selection of collective variables in metadynamics. J Chem Phys. 2017, 147(20):204109.
2. Brotzakis, Z. F., Limongelli, V., & Parrinello, M. Accelerating the Calculation of Protein–Ligand Binding Free Energy and Residence Times Using Dynamically Optimized Collective Variables. Journal of Chemical Theory and Computation. 2018, 15(1):743–750.
3. Brotzakis, Z. F., & Parrinello, M. (2018). Enhanced Sampling of Protein Conformational Transitions via Dynamically Optimized Collective Variables. Journal of Chemical Theory and Computation. 2018, 15(2):1393–1398
