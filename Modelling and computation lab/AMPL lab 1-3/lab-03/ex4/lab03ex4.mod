param N;
set M := 1..N;
set METAL;
var A{M};   # quatity of alloy in quintal  like A1,A2,A3..

param TIN_PER{M}>=0;     # %age tin  in alloy  
param ZIN_PER{M}>=0;     # %age zink  in alloy
param LEAD_PER{M}>=0;    #%age lead  in alloy

var IN_HOUSE_USED{M}>=0;  # used quantity of alloy (quintals) from in house alloy stock . 
var PERCHASE{M}>=0;       # quantity of alloy purchase from market to meet the requirement.
param AVAIL_ALLOY{M}>=0;  #alloy available in house.

param IN_HOUSE_COST{M}>=0; #cost of in house alloy .
param PUR_COST{M}>=0; # cost of alloy that are purchased from market.
 

minimize cost: sum{i in M}(IN_HOUSE_USED[i]*IN_HOUSE_COST[i]+PERCHASE[i]*PUR_COST[i]);

s.t. con1: sum{i in M}A[i]=100;
s.t. con2: sum{i in M}A[i]*TIN_PER[i]= 4000;
s.t. con3: sum{i in M}A[i]*ZIN_PER[i]= 3500;
s.t. con4: sum{i in M}A[i]*LEAD_PER[i]= 2500;
s.t. con5{i in M}: A[i]=IN_HOUSE_USED[i]+PERCHASE[i];
s.t. con6{i in M}: IN_HOUSE_USED[i]<=AVAIL_ALLOY[i];