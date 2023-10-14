include "multiplication.circom";

component main = Multiplier();

// Test the circuit with specific values
main.a <== 3;
main.b <== 4;
main.c === 12;  // This should hold true, as 3 * 4 = 12
