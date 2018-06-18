# suppose yi be the actual prices i=1,2,3,4,5,6
# suppose ri be residual prices i=1,2..6.
# b0 is a base price for this section of city.
# b1 is the price varies with lot size.
# b2 is the price varies with elevation.



var b0;
var b1;
var b2;

var y1;
var y2;
var y3;
var y4;
var y5;
var y6;

var r1;
var r2;
var r3;
var r4;
var r5;
var r6;

minimize z: r1+r2+r3+r4+r5+r6;

s.t. con1: y1=b0+ b1*12000+b2*350;
s.t. con2: y2=b0+ b1*10000+b2*300;
s.t. con3: y3=b0+ b1*9000+b2*100;
s.t. con4: y4=b0+ b1*8000+b2*200;
s.t. con5: y5=b0+ b1*6000+b2*100;
s.t. con6: y6=b0+ b1*9000+b2*200;
s.t. con7: b0>=0;

s.t. con8: r1 >= 155000-y1;
s.t. con9: r1 >= -155000+y1;          
s.t. con10: r2 >= 120000-y2;
s.t. con11: r2 >= -120000+y2;
s.t. con12: r3 >= 100000-y3;
s.t. con13: r3 >= -100000+y3;
s.t. con14: r4 >= 70000-y4;
s.t. con15: r4 >= -70000+y4;
s.t. con16: r5 >= 60000-y5;
s.t. con17: r5 >= -60000+y5;
s.t. con18: r6 >= 100000-y6;
s.t. con19: r6 >= -100000+y6;