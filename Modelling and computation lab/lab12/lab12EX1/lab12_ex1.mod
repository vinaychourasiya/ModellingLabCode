param N;
set S :=1..N;
var a;
var b;
var c;
param X{S};
param Y{S};
param Z{S};
param M{S};

minimize Distance: sum{i in S}(sqrt((a-X[i])^2+(b-Y[i])^2+(c-Z[i])^2)*M[i]);
