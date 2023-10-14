template MatrixMultiplication() {
    // Matrix A
    signal private input a11;
    signal private input a12;
    signal private input a21;
    signal private input a22;

    // Matrix B
    signal private input b11;
    signal private input b12;
    signal private input b21;
    signal private input b22;

    // Resultant Matrix C
    signal output c11;
    signal output c12;
    signal output c21;
    signal output c22;

    // Constraints for matrix multiplication
    c11 <== a11 * b11 + a12 * b21;
    c12 <== a11 * b12 + a12 * b22;
    c21 <== a21 * b11 + a22 * b21;
    c22 <== a21 * b12 + a22 * b22;
}

component main = MatrixMultiplication();
