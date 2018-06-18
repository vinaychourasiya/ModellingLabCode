# let Nij= no. of people doing task j on week i where (i = 1...8) and (j= 1 ,2,3 where 1= swiss cheese,2= sharp cheese,3 = training new workers)
# Ti= no. of people train on week i.
# Sik = the inventory of type k cheese on week i (k=1,2 i.e. 1= swisss chese and 2= sharp cheese).

var N11>=0;
var N12>=0;
var N13>=0;
var N21>=0;
var N22>=0;
var N23>=0;
var N31>=0;
var N32>=0;
var N33>=0;
var N41>=0;
var N42>=0;
var N43>=0;
var N51>=0;
var N52>=0;
var N53>=0;
var N61>=0;
var N62>=0;
var N63>=0;
var N71>=0;
var N72>=0;
var N73>=0;
var N81>=0;
var N82>=0;
var N83>=0;
var T1>=0;
var T2>=0;
var T3>=0;
var T4>=0;
var T5>=0;
var T6>=0;
var S11>=0;
var S12>=0;
var S21>=0;
var S22>=0;
var S31>=0;
var S32>=0;
var S41>=0;
var S42>=0;
var S51>=0;
var S52>=0;
var S62>=0;
var S61>=0;
var S72>=0;
var S71>=0;
var S81>=0;
var S82>=0;

minimize Z: 50*(N11+N12+N13+N21+N22+N23+N31+N32+N33+N41+N42+N43+N51+N52+N53+N61+N62+N63+N71+N72+N73+N81+N82+N83+T1+T2+T3+T4+T5+T6);

s.t. con1: N11+N12+N13=60;
s.t. con2: 500*N11 + S11 = 12000;
s.t. con3: 300*N12 + S12 = 8000;
s.t. con4: N21+N22+N23=60;
s.t. con5: 500*N21 + S21 = 12000-S11;  
s.t. con6: 300*N22 + S22 = 8000-S12;
s.t. con7: N31+N32+N33=60+T1; 
s.t. con8: 500*N31 + S31 = 12000-S21;
s.t. con9: 300*N32 + S32 = 10000-S22;
s.t. con10:  T1<=3*N13;
s.t. con11: N41+N42+N43 = 60+T1+T2;
s.t. con12: 500*N41 + S41 = 16000-S31;
s.t. con13: 300*N42 + S42 = 10000-S32;
s.t. con14:  T2<=3*N23;
s.t. con15: N51+N52+N53 = 60+T1+T2+T3;
s.t. con16: 500*N51 + S51 = 16000-S41;
s.t. con17: 300*N52 + S52 = 12000-S42;
s.t. con18: T3<=3*N33;
s.t. con19: N61+N62+N63 = 60+T1+T2+T3+T4;
s.t. con20: 500*N61 + S61 = 20000-S51;
s.t. con21: 300*N62 + S62 = 12000-S52;
s.t. con22: T4<=3*N43;
s.t. con23: N71+N72+N73 = 60+T1+T2+T3+T4+T5;
s.t. con24: 500*N71 + S71 = 20000-S61;
s.t. con25: 300*N72 + S72 = 12000-S62;
s.t. con26: T5<=3*N53;
s.t. con27: N81+N82+N83 = 60+T1+T2+T3+T4+T5+T6;
s.t. con28: 500*N81 + S81 = 20000-S71;
s.t. con29: 300*N82 + S82 = 12000-S72;
s.t. con30: T6<=3*N63;
s.t. con31: N81+N82+N83 = 90;
