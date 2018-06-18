set f:= 1..12;
set l:=1..12;
param assign{f,l};
var x{f,l}>=0,<=1; 
minimize cost: sum{i in f,j in l}x[i,j]*assign[i,j];
s.t. con1{a in f}: (sum{b in l} x[a,b])=1;
s.t. con2{a1 in f}: (sum{b1 in l} x[b1,a1])=1;
