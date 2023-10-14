include "matrix_multiplication.circom";

component main = MatrixMultiplication();

// Test matrices
main.a11 <== 1; main.a12 <== 2; main.a21 <== 3; main.a22 <== 4;
main.b11 <== 2; main.b12 <== 0; main.b21 <== 1; main.b22 <== 3;

// Expected results for C = A * B
main.c11 === 4;  // 1*2 + 2*1
main.c12 === 6;  // 1*0 + 2*3
main.c21 === 10;  // 3*2 + 4*1
main.c22 === 12;  // 3*0 + 4*3
