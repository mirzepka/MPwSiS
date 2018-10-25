# MPSiS 2018/2019
# Model 1a


/* Set of variable indices, up to 'n' */
set NODES;
set LINKS within (NODES cross NODES);

/* Number of variables */
Link_Capa_Cost d{i in I, j in J};

/* Decision variables */
var x{i in I} >= 0;

/* Objective function 'z' */
maximize z: x[1] + 3*x[2];

/* Constraints */

s.t. C1: -x[1] + x[2] <= 1;
s.t. C2:  x[1] + x[2] <= 2;

/* Input data */

data;

param NODE_ID := 1 N1 2 N2 3 N3 4 N4 5 N5 6N6
param NODE_ID := 1 L12 2 L13 3 L25 4 L 5 NE 6 NF

end;

