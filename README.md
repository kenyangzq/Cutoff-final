# L-BFGS-Cutoff-s2

## Introduction 
This is the final version for the cutoff implementation of L-BFGS algorithm for minimizing energy on 3d sphere. It uses angle coordinate
and can only work on 3d sphere so far. 

## Algorithm
The code is implemented mainly based on the L-BFGS algorithm implemented by PatWie from https://github.com/PatWie/CppNumericalSolvers.git.
His implementation of the algorithm provides general line search and the l-bfgs solver class. We modify the solver and the line search 
based on our needs. Both classes are revised based on **Numerical Optimization** by Norcedal and Wright. In addition the solver class is 
also revised according to the stopping condition (convergence) in our case.


## Compile
To compile, just open a terminal and run   
    `cmake . && make`  
A executable binary file called L-BFGS will be genearated.

## Run
To run the program, you need to provide a input file and a control file. The format of the input file should be .txt and it should contains
the initial coordinates of the point configuration on 3d sphere. The name of it is not required. For the control file, the name and format
are strictly required. The name has to be control.inp and an example of the format can be found in the folder. It is recommaned that you 
download the control.inp and modify it based on your input.

This implementation also allows to generate output files containing the coordinates. 

