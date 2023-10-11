
include "../circuits/private_transaction.circom";

component main = PrivateTransaction();

// Test data for the circuit
main.sender <== 0xABCDEF;
main.receiver <== 0x123456;
main.amount <== 100;
