var x1 >=0;
var x2 >=0;
var x3 >=0;
var x4 >=0;
var x5 >=0;
var y>=0,<=10;

maximize z: .043*x1 + .027*x2 + .025*x3 + .022*x4 + .045*x5 - .0275*y;

s.t. con1: x1+x2+x3+x4+x5-y<=100;
s.t. con2: x2+x3+x4>=40;
s.t. con3: .6*x1+.6*x2-.4*x3-.4*x4+3.6*x5<=0;
s.t. con4: 4*x1+ 10*x2-x3-2*x4-3*x5<=0;
 
