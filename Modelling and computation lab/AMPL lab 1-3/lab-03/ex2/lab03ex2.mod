# suppose yi be the forcasted prices i=1,2,3,4,5,6
# suppose ri be residual prices i=1,2..6.
# b0 is a base price for this section of city.
# b1 is the price varies with lot size.
# b2 is the price varies with elevation.
param N;
set S := 1..N;
param SPRICE{S};
param LSIZE{S};
param ELEV{S};

var y{S};
var r{S};
var b0;
var b1;
var b2;

minimize z: sum{i in S} r[i];

s.t. con1{i in S}: y[i]=b0+ b1*LSIZE[i]+ b2*ELEV[i];
s.t. con2: b0>=0;
s.t. con3{i in S}:r[i]>=SPRICE[i] - y[i];
s.t. con4{i in S}:r[i]>=-SPRICE[i]+ y[i];