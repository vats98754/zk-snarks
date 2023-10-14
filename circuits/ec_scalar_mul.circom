template Multiplier() {
    signal private input a;
    signal private input b;
    signal output c;

    // Constraint that c = a * b
    c <== a * b;
}

component main = Multiplier();
