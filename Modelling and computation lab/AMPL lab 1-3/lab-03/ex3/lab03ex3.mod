set CANDS; # The set of all candidates:

set DAYS; # The set of all working days in a week:

param AVAIL_HOURS{CANDS, DAYS}; # Availability of candidate on each day:

var hours{CANDS, DAYS}>=0; # Hours allocated to each candidate on each day:

param WAGES{CANDS}; # wage rate of candidates

param MIN_WORK{CANDS};  # minimum no. hours working in week

param DAY_WORK{DAYS};  # whole day work requirement 8 to 10 PM.


minimize cost: sum{c in CANDS, d in DAYS} WAGES[c]*hours[c,d];


s.t. con1 {KC in CANDS}: sum{d in DAYS}hours[KC,d]>=MIN_WORK[KC];
s.t. con2 {DH in CANDS}: sum{d in DAYS}hours[DH,d]>=MIN_WORK[DH];
s.t. con3 {HB in CANDS}: sum{d in DAYS}hours[HB,d]>=MIN_WORK[HB];
s.t. con4 {SC in CANDS}: sum{d in DAYS}hours[SC,d]>=MIN_WORK[SC];
s.t. con5 {KS in CANDS}: sum{d in DAYS}hours[KS,d]>=MIN_WORK[KS];
s.t. con6 {NK in CANDS}: sum{d in DAYS}hours[NK,d]>=MIN_WORK[NK];
s.t. con7 {MON in DAYS}: sum{c in CANDS}hours[c,MON]=DAY_WORK[MON];
s.t. con8 {TUE in DAYS}: sum{c in CANDS}hours[c,TUE]=DAY_WORK[TUE];
s.t. con9 {WED in DAYS}: sum{c in CANDS}hours[c,WED]=DAY_WORK[WED];
s.t. con10 {THU in DAYS}: sum{c in CANDS}hours[c,THU]=DAY_WORK[THU];
s.t. con11 {FRI in DAYS}: sum{c in CANDS}hours[c,FRI]=DAY_WORK[FRI];
s.t. con12 {c in CANDS, d in DAYS}: hours[c,d]<= AVAIL_HOURS[c,d];