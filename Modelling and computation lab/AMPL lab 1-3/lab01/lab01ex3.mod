var z;
var x1>=-150,<=150;
var x2>=-150,<=150;
var x3>=-150,<=150;

minimize A:z;

s.t. con1: z>=3*x1+5*x2-4*x3;
s.t. con2: z>= 2*x1-9*x2+13*x3;
s.t. con3: z>= 3*x2+3*x3-20;
s.t. con4: x1+x2+x3<=100;
s.t. con5: x1+x2+x3>=-100;


