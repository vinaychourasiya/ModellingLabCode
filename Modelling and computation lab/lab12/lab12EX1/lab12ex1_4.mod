param N;
set S := 2..N;
var a;
var b;
var c;
var Q>=5;
param X{S};
param Y{S};
param Z{S};
param M{S};

minimize Distance: sum{i in S}(sqrt((a-X[i])^2+(b-Y[i])^2+(c-Z[i])^2)*M[i])+(sqrt((a-0.5)^2+(b)^2+(c)^2)*Q);
s.t. con1: sqrt((a-0.5)^2+(b)^2+(c)^2)<=2;

