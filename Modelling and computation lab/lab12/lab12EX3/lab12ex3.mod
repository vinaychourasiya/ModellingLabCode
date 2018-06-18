set N;	
var S{N}, binary;	
var V{N}, binary;	

param W{N,N}; 

maximize cut : sum{i in N}sum{j in N} W[i,j]*S[i]*V[j];

s.t. con1{i in N}: S[i] + V[i] = 1;
