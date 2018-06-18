var x1>= -1;
var x2>= 3;
var x3 >= -10;
var x4 >= 8;
var x5 >= 9;
var x6 >= 0;
var x7 >=0;

minimize cost: 10*x1 + 5*x2 - 3*x3-6*x4 + 9*x5 -7*x6 -1.6*x7;

s.t.con1: x1+x2+x3+x4+x5+x6+x7 = 100;
s.t. con2: x1+x2 >= 10;
s.t. con3: 4*x3+2*x6+3*x7 <= 150;
s.t. con4: 10*x1-x6+3*x5 >= 20;
s.t. con5: x3-x5+3*x7 >= 10;

