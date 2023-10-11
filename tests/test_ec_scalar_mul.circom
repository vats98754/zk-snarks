
include "../circuits/ec_scalar_mul.circom";

component main = ECScalarMul();

main.Px <== 5; 
main.Py <== 7; 
main.k <== 3;
main.Qx === 15;
main.Qy === 21;
